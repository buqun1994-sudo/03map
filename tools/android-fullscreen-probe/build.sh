#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/../.." && pwd)"
config="$repo_root/.codex/local-context.properties"
if [[ ! -r "$config" ]]; then
  printf '缺少本机工具配置：%s\n' "$config" >&2
  exit 1
fi
# shellcheck disable=SC1090
source "$config"
export JAVA_HOME="${JDK17_HOME:?JDK17_HOME 未配置}"
ANDROID_SDK_ROOT="${ANDROID_SDK_ROOT:?ANDROID_SDK_ROOT 未配置}"
AAPT2="${AAPT2:?AAPT2 未配置}"
ZIPALIGN="${ZIPALIGN:?ZIPALIGN 未配置}"
APKSIGNER="${APKSIGNER:?APKSIGNER 未配置}"
SIGNING_KEY="${PROBE_SIGNING_PK8:-${AMAP_SIGNING_PK8:-}}"
SIGNING_CERT="${PROBE_SIGNING_CERT:-${AMAP_SIGNING_CERT:-}}"

java="$JAVA_HOME/bin/java"
javac="$JAVA_HOME/bin/javac"
build_tools="$(dirname "$AAPT2")"
d8="$build_tools/d8"
platform=""
for candidate in 35 34 33; do
  if [[ -f "$ANDROID_SDK_ROOT/platforms/android-$candidate/android.jar" ]]; then
    platform="$ANDROID_SDK_ROOT/platforms/android-$candidate/android.jar"
    break
  fi
done
if [[ -z "$platform" ]]; then
  printf '没有可用 Android platform android-35/34/33\n' >&2
  exit 1
fi
for required in "$java" "$javac" "$AAPT2" "$ZIPALIGN" "$APKSIGNER" "$d8" "$platform" "$SIGNING_KEY" "$SIGNING_CERT"; do
  if [[ ! -e "$required" ]]; then
    printf '缺少构建输入：%s\n' "$required" >&2
    exit 1
  fi
done

source_root="$repo_root/tools/android-fullscreen-probe"
out_root="$repo_root/apk-work/android-fullscreen-probe"
mkdir -p "$out_root"
build_root="$(mktemp -d "$out_root/build.XXXXXX")"
case "$build_root" in
  "$out_root"/build.*) ;;
  *) printf '非法构建暂存路径：%s\n' "$build_root" >&2; exit 1 ;;
esac
classes="$build_root/classes"
dex="$build_root/dex"
generated="$build_root/generated"
unsigned="$build_root/unsigned.apk"
aligned="$build_root/aligned.apk"
final="$out_root/03T-全屏兼容探针-1.0.0.apk"
mkdir -p "$classes" "$dex" "$generated"

"$javac" -encoding UTF-8 -source 8 -target 8 -bootclasspath "$platform" -d "$classes" \
  "$source_root/src/com/icar03/fullscreenprobe/ProbeActivity.java"
class_inputs=("$classes"/com/icar03/fullscreenprobe/*.class)
if [[ ! -e "${class_inputs[0]}" ]]; then
  printf 'Java编译没有生成探针class\n' >&2
  exit 1
fi
"$d8" --lib "$platform" --min-api 21 --output "$dex" \
  "${class_inputs[@]}"
"$AAPT2" link --auto-add-overlay --manifest "$source_root/AndroidManifest.xml" \
  -I "$platform" -o "$unsigned"
(
  cd "$dex"
  zip -q -X "$unsigned" classes.dex
)
"$ZIPALIGN" -p -f 4 "$unsigned" "$aligned"
"$APKSIGNER" sign --key "$SIGNING_KEY" --cert "$SIGNING_CERT" --out "$final" "$aligned"

verification="$build_root/signature.txt"
"$APKSIGNER" verify --verbose --print-certs "$final" > "$verification"
if ! grep -q '^Verifies$' "$verification"; then
  printf '签名验证失败\n' >&2
  cat "$verification" >&2
  exit 1
fi
badging="$build_root/badging.txt"
"$AAPT2" dump badging "$final" > "$badging"
if ! grep -q "package: name='com.icar03.fullscreenprobe'" "$badging" || \
   ! grep -q "versionCode='1'" "$badging" || \
   ! grep -q "versionName='1.0.0'" "$badging" || \
   ! grep -q "targetSdkVersion:'24'" "$badging" || \
   ! grep -q "minSdkVersion:'21'" "$badging"; then
  printf '包身份或 SDK 检查失败\n' >&2
  cat "$badging" >&2
  exit 1
fi
"$ZIPALIGN" -c -v 4 "$final" > "$build_root/zipalign.txt"
unzip -t "$final" > "$build_root/zip-test.txt"
shasum -a 256 "$final" | tee "$out_root/03T-全屏兼容探针-1.0.0.sha256"
printf 'APK=%s\n' "$final"
printf 'BUILD_ROOT=%s\n' "$build_root"
printf 'BADGING=%s\n' "$badging"
printf 'SIGNATURE=%s\n' "$verification"
