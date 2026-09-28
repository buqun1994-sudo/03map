#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
source "$repo_root/.codex/local-context.properties"
export JAVA_HOME="$JDK17_HOME"

source_root="$repo_root/source/amap-9.5.0.600013"
work_root="$repo_root/apk-work/9.5.0.600013"
android_jar="$ANDROID_SDK_ROOT/platforms/android-34/android.jar"
d8="$(dirname "$ZIPALIGN")/d8"

if [[ $# -ne 0 && $# -ne 2 ]]; then
    printf '用法：%s [仓库外的签名私钥 PK8 路径 证书 PEM 路径]\n' "$0" >&2
    exit 2
fi
for required in "$source_root/apktool.yml" "$android_jar" "$d8" "$APKTOOL_JAR"; do
    if [[ ! -e "$required" ]]; then
        printf '缺少构建输入：%s\n' "$required" >&2
        exit 1
    fi
done
if [[ $# -eq 2 && ( ! -f "$1" || ! -f "$2" ) ]]; then
    printf '签名私钥或证书文件不存在\n' >&2
    exit 1
fi
if rg -q '^\s*- so\s*$' "$source_root/apktool.yml"; then
    printf 'apktool.yml 禁止配置 doNotCompress: - so\n' >&2
    exit 1
fi

mkdir -p "$work_root"
build_root="$(mktemp -d "$work_root/source-build.XXXXXX")"
stage="$build_root/decode"
classes="$build_root/classes"
dex="$build_root/dex"
mkdir -p "$stage" "$classes" "$dex"
rsync -a --exclude='/content-src/' --exclude='/build/' "$source_root/" "$stage/"

"$JAVA_HOME/bin/javac" --release 8 -cp "$android_jar" -d "$classes" \
    "$source_root"/content-src/com/autonavi/amapauto/content/*.java
class_files=()
while IFS= read -r -d '' class_file; do
    class_files+=("$class_file")
done < <(find "$classes" -type f -name '*.class' -print0)
if [[ ${#class_files[@]} -eq 0 ]]; then
    printf '内容区 Java 未产出 class\n' >&2
    exit 1
fi
"$d8" --min-api 21 --lib "$android_jar" --output "$dex" "${class_files[@]}"
mv "$dex/classes.dex" "$dex/classes2.dex"

unsigned="$build_root/unsigned.apk"
aligned="$build_root/aligned-unsigned.apk"
"$JAVA_HOME/bin/java" -jar "$APKTOOL_JAR" b "$stage" -o "$unsigned"
(cd "$dex" && zip -q -X "$unsigned" classes2.dex)
"$ZIPALIGN" -p -f 4 "$unsigned" "$aligned"
"$ZIPALIGN" -c -v 4 "$aligned" >/dev/null
unzip -t "$aligned" >/dev/null
unzip -v "$aligned" | awk '$8 ~ /^lib\/.*\.so$/ { count++; if ($2 !~ /^Defl/) bad++ } END { if (!count || bad) exit 1; printf "Deflate 原生库：%d\n", count }'
unzip -l "$aligned" | rg 'classes(2)?\.dex'
"$AAPT2" dump badging "$aligned" | rg '^package:|^sdkVersion:|^targetSdkVersion:'
shasum -a 256 "$aligned"

if [[ $# -eq 2 ]]; then
    signed="$build_root/signed.apk"
    "$APKSIGNER" sign --key "$1" --cert "$2" --out "$signed" "$aligned"
    "$APKSIGNER" verify --verbose --print-certs "$signed" | rg '^Verifies$|^Verified using v[123] scheme|^Signer #1 certificate SHA-256 digest:'
    signer_digest="$("$APKSIGNER" verify --print-certs "$signed" | awk '/^Signer #1 certificate SHA-256 digest:/ { print $NF }')"
    if [[ "$signer_digest" != 'a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc' ]]; then
        printf '签名证书与正式输入身份不匹配；禁止使用该包覆盖安装\n' >&2
        exit 1
    fi
    "$ZIPALIGN" -c -v 4 "$signed" >/dev/null
    shasum -a 256 "$signed"
fi
printf '输出目录：%s\n' "$build_root"
