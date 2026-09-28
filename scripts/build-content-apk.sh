#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
if [[ ! -f "$repo_root/.codex/local-context.properties" ]]; then
    printf '缺少本机配置：.codex/local-context.properties\n' >&2
    exit 1
fi
source "$repo_root/.codex/local-context.properties"
export JAVA_HOME="$JDK17_HOME"

source_root="$repo_root/source/amap-9.5.0.600013"
work_root="$repo_root/apk-work/9.5.0.600013"
android_jar="$ANDROID_SDK_ROOT/platforms/android-34/android.jar"
d8="$(dirname "$ZIPALIGN")/d8"
r8_jar="$(dirname "$ZIPALIGN")/lib/d8.jar"
aapt2="${AAPT2:-$(dirname "$ZIPALIGN")/aapt2}"
expected_signer='a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc'

if [[ $# -ne 0 && $# -ne 2 ]]; then
    printf '用法：%s [仓库外的签名私钥 PK8 路径 证书 PEM 路径]\n' "$0" >&2
    exit 2
fi
signing_key="${1:-${AMAP_SIGNING_PK8:-}}"
signing_cert="${2:-${AMAP_SIGNING_CERT:-}}"
if [[ -z "$signing_key" || -z "$signing_cert" || ! -r "$signing_key" || ! -r "$signing_cert" ]]; then
    printf '签名材料缺失或不可读：配置仓库外的 AMAP_SIGNING_PK8 和 AMAP_SIGNING_CERT；禁止产出未签名交付包\n' >&2
    exit 1
fi
certificate_digest="$(openssl x509 -in "$signing_cert" -noout -fingerprint -sha256 | awk -F= '{ print $2 }' | tr -d ':' | tr '[:upper:]' '[:lower:]')"
if [[ "$certificate_digest" != "$expected_signer" ]]; then
    printf '签名证书与当前车机候选包身份不匹配；禁止构建或覆盖安装\n' >&2
    exit 1
fi
for required in "$source_root/apktool.yml" "$android_jar" "$d8" "$r8_jar" "$APKTOOL_JAR" "$aapt2" "$ZIPALIGN" "$APKSIGNER"; do
    if [[ ! -e "$required" ]]; then
        printf '缺少构建输入：%s\n' "$required" >&2
        exit 1
    fi
done
if rg -q '^\s*- so\s*$' "$source_root/apktool.yml"; then
    printf 'apktool.yml 禁止配置 doNotCompress: - so\n' >&2
    exit 1
fi
node "$repo_root/scripts/check-content-assets.mjs"

mkdir -p "$work_root"
build_root="$(mktemp -d "$work_root/source-build.XXXXXX")"
stage="$build_root/decode"
classes="$build_root/classes"
dex="$build_root/dex"
unsigned="$build_root/unsigned.apk"
aligned="$build_root/aligned-unsigned.apk"
signed_candidate="$build_root/signed.apk.tmp"
signed="$build_root/signed.apk"
trap 'rm -f -- "$unsigned" "$aligned" "$signed_candidate"' EXIT
mkdir -p "$stage" "$classes" "$dex"
rsync -a --exclude='/content-src/' --exclude='/build/' "$source_root/" "$stage/"

dependency_classpath="$(bash "$repo_root/scripts/resolve-content-deps.sh")"
"$JAVA_HOME/bin/javac" --release 8 -cp "$android_jar:$dependency_classpath" -d "$classes" \
    "$source_root"/content-src/com/autonavi/amapauto/content/*.java
class_files=()
while IFS= read -r -d '' class_file; do
    class_files+=("$class_file")
done < <(find "$classes" -type f -name '*.class' -print0)
if [[ ${#class_files[@]} -eq 0 ]]; then
    printf '内容区 Java 未产出 class\n' >&2
    exit 1
fi
"$JAVA_HOME/bin/jar" cf "$build_root/content.jar" -C "$classes" .
IFS=: read -r -a dependency_jars <<< "$dependency_classpath"
annotation_jar="${dependency_jars[${#dependency_jars[@]}-1]}"
unset 'dependency_jars[${#dependency_jars[@]}-1]'
"$JAVA_HOME/bin/java" -cp "$r8_jar" com.android.tools.r8.R8 --release --min-api 21 \
    --lib "$android_jar" --lib "$annotation_jar" \
    --pg-conf "$repo_root/scripts/content-runtime.pro" --output "$dex" \
    "$build_root/content.jar" "${dependency_jars[@]}"
mv "$dex/classes.dex" "$dex/classes2.dex"
node "$repo_root/scripts/check-content-dex.mjs" "$dex/classes2.dex"

"$JAVA_HOME/bin/java" -jar "$APKTOOL_JAR" b "$stage" -o "$unsigned"
(cd "$dex" && zip -q -X "$unsigned" classes2.dex)
"$ZIPALIGN" -p -f 4 "$unsigned" "$aligned"
"$APKSIGNER" sign --key "$signing_key" --cert "$signing_cert" --out "$signed_candidate" "$aligned"
verification="$("$APKSIGNER" verify --verbose --print-certs "$signed_candidate")"
if ! printf '%s\n' "$verification" | rg -q '^Verifies$' ||
   ! printf '%s\n' "$verification" | rg -q '^Verified using v2 scheme .*: true$' ||
   ! printf '%s\n' "$verification" | rg -q '^Number of signers: 1$' ||
   ! printf '%s\n' "$verification" | rg -q "^Signer #1 certificate SHA-256 digest: $expected_signer$"; then
    printf '签名验证失败：必须为单签名人、v2 有效且证书身份匹配\n' >&2
    exit 1
fi
printf '%s\n' "$verification" | rg '^Verifies$|^Verified using v[123] scheme|^Number of signers:|^Signer #1 certificate SHA-256 digest:'
"$ZIPALIGN" -c -v 4 "$signed_candidate" >/dev/null
unzip -t "$signed_candidate" >/dev/null
unzip -v "$signed_candidate" | awk '$8 ~ /^lib\/.*\.so$/ { count++; if ($2 !~ /^Defl/) bad++ } END { if (!count || bad) exit 1; printf "Deflate 原生库：%d\n", count }'
unzip -l "$signed_candidate" | rg 'classes(2)?\.dex'
badging="$("$aapt2" dump badging "$signed_candidate")"
package_line="$(printf '%s\n' "$badging" | rg '^package:')"
if [[ "$package_line" != *"name='com.autonavi.amapautolite'"* ||
      "$package_line" != *"versionCode='26000001'"* ||
      "$package_line" != *"versionName='9.5.0.600013'"* ]]; then
    printf '包名或版本与当前正式基线不匹配；禁止交付\n' >&2
    exit 1
fi
printf '%s\n' "$badging" | rg '^package:|^sdkVersion:|^targetSdkVersion:'
mv "$signed_candidate" "$signed"
shasum -a 256 "$signed"
printf '输出目录：%s\n' "$build_root"
printf '已签名交付包：%s\n' "$signed"
