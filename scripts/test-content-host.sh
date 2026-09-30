#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
if [[ $# -ne 1 || ! -f "$1" ]]; then
    printf '用法：%s 已签名Compose候选包路径\n' "$0" >&2
    exit 2
fi
if [[ ! -f "$repo_root/.codex/local-context.properties" ]]; then
    printf '缺少本机工具配置\n' >&2
    exit 1
fi
source "$repo_root/.codex/local-context.properties"
export JAVA_HOME="$JDK17_HOME"
export ANDROID_HOME="$ANDROID_SDK_ROOT"
export ANDROID_SDK_ROOT
signed_apk="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
verification="$("$APKSIGNER" verify --verbose --print-certs "$signed_apk")"
expected_signer='a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc'
if ! printf '%s\n' "$verification" | grep -E -q "^Signer #1 certificate SHA-256 digest: $expected_signer$" ||
   ! printf '%s\n' "$verification" | grep -E -q '^Number of signers: 1$' ||
   ! printf '%s\n' "$verification" | grep -E -q '^Verified using v2 scheme .*: true$'; then
    printf '候选签名身份验证失败\n' >&2
    exit 1
fi
node "$repo_root/scripts/check-compose-package.mjs" "$signed_apk"
mkdir -p "$repo_root/apk-work/9.5.0.600013"
evidence="$(mktemp -d "$repo_root/apk-work/9.5.0.600013/host-package-test.XXXXXX")"
dex_files=()
while IFS= read -r name; do
    if [[ "$name" =~ ^classes([2-9]|[1-9][0-9]+)\.dex$ ]]; then
        unzip -p "$signed_apk" "$name" > "$evidence/$name"
        dex_files+=("$evidence/$name")
    fi
done < <(unzip -Z1 "$signed_apk")
if [[ ${#dex_files[@]} -eq 0 ]]; then
    printf '候选缺少Compose内容DEX\n' >&2
    exit 1
fi
node "$repo_root/scripts/check-content-dex.mjs" "${dex_files[@]}"
# Contract probes compile current canonical source. They do not run vehicle/native map DEX.
(cd "$repo_root/ui-preview" && ./gradlew --offline -Pkotlin.incremental=false \
    :map-host:testDebugUnitTest :map-host:lintDebug \
    :content-ui:testDebugUnitTest :content-ui:lintDebug \
    :content-runtime:testDebugUnitTest :content-runtime:lintDebug \
    :app:testDebugUnitTest :app:lintDebug --console=plain)
shasum -a 256 "$signed_apk"
printf '候选包静态检查及正式源码宿主契约探针通过；车机地图/服务运行仍待同包实测。\n'
printf '本机包级证据：%s\n' "$evidence"
