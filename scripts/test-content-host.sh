#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
if [[ $# -eq 1 && "$1" == '--help' ]]; then
    printf '用法：%s 已签名Compose候选包路径\n只核验签名APK、包身份、原DEX、内容DEX、原生库、压缩和对齐；不执行源码测试或车机验证。\n' "$0"
    exit 0
fi
if [[ $# -ne 1 || ! -f "$1" ]]; then
    printf '用法：%s 已签名Compose候选包路径\n' "$0" >&2
    exit 2
fi
signed_apk="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
original_dex="$(dirname "$signed_apk")/original.dex"
apk_sha="$(shasum -a 256 "$signed_apk" | awk '{ print $1 }')"
mkdir -p "$repo_root/apk-work/9.5.0.600013"
evidence="$(mktemp -d "$repo_root/apk-work/9.5.0.600013/host-package-test.XXXXXX")"
started_ms="$(node -p 'Date.now()')"
expected_signer='a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc'
phase='configuration'
: > "$evidence/checks.txt"

write_report() {
    result=$?
    trap - EXIT
    set +e
    final_sha="$(shasum -a 256 "$signed_apk" 2>/dev/null | awk '{ print $1 }')"
    if [[ "$result" -eq 0 && "$apk_sha" != "$final_sha" ]]; then
        printf '核验期间APK变化，拒收包级证据\n' >&2
        result=1
        phase='apk-changed'
    fi
    node --input-type=module - "$evidence" "$signed_apk" "$apk_sha" "$final_sha" "$original_dex" "$expected_signer" "$started_ms" "$result" "$phase" <<'NODE'
import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
const [directory, apk, apkSha256, apkSha256After, originalDex, expectedSigner, start, exit, failedPhase] = process.argv.slice(2);
const endedMs = Date.now(), startedMs = Number(start), exitCode = Number(exit);
const report = {
  schemaVersion: 1, type: 'signed-apk-static-verification', apk, apkSha256, apkSha256After,
  originalDex, originalDexSha256: fs.existsSync(originalDex) ? crypto.createHash('sha256').update(fs.readFileSync(originalDex)).digest('hex') : null,
  expectedSigner, startedAt: new Date(startedMs).toISOString(), endedAt: new Date(endedMs).toISOString(), elapsedMs: endedMs - startedMs,
  exitCode, valid: exitCode === 0 && apkSha256 === apkSha256After,
  failedPhase: exitCode ? failedPhase : null,
  checks: fs.readFileSync(path.join(directory, 'checks.txt'), 'utf8').trim().split('\n').filter(Boolean),
  packageBadging: fs.existsSync(path.join(directory, 'badging.txt')) ? fs.readFileSync(path.join(directory, 'badging.txt'), 'utf8') : null,
  sourceTestsExecuted: false, vehicleExecutionVerified: false,
};
fs.writeFileSync(path.join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
console.log(`APK SHA-256: ${apkSha256}`);
console.log(`包级报告：${path.join(directory, 'report.json')}`);
NODE
    report_exit=$?
    if [[ "$report_exit" -ne 0 ]]; then result=1; fi
    if [[ "$result" -eq 0 ]]; then
        printf '签名APK静态核验通过；未执行源码测试或车机运行验证。\n'
    fi
    exit "$result"
}
trap write_report EXIT

if [[ ! -f "$repo_root/.codex/local-context.properties" ]]; then
    printf '缺少本机工具配置\n' >&2
    exit 1
fi
source "$repo_root/.codex/local-context.properties"
export JAVA_HOME="${JDK17_HOME:?缺少JDK17_HOME}"
aapt2="${AAPT2:-$(dirname "${ZIPALIGN:?缺少ZIPALIGN}")/aapt2}"
if [[ ! -f "$original_dex" ]]; then
    printf '候选APK相邻original.dex缺失，无法核验原primary DEX\n' >&2
    exit 1
fi

phase='signature'
verification="$("${APKSIGNER:?缺少APKSIGNER}" verify --verbose --print-certs "$signed_apk")"
printf '%s\n' "$verification" > "$evidence/signature.txt"
if ! printf '%s\n' "$verification" | grep -E -q '^Verifies$' ||
   ! printf '%s\n' "$verification" | grep -E -q "^Signer #1 certificate SHA-256 digest: $expected_signer$" ||
   ! printf '%s\n' "$verification" | grep -E -q '^Number of signers: 1$' ||
   ! printf '%s\n' "$verification" | grep -E -q '^Verified using v2 scheme .*: true$'; then
    printf '候选签名身份验证失败\n' >&2
    exit 1
fi
printf '%s\n' 'signature-single-signer-v2-identity' >> "$evidence/checks.txt"

phase='alignment-and-zip'
"$ZIPALIGN" -c -v 4 "$signed_apk" > "$evidence/alignment.txt"
unzip -t "$signed_apk" > "$evidence/zip-integrity.txt"
unzip -v "$signed_apk" | awk '$8 ~ /^lib\/.*\.so$/ { count++; if ($2 !~ /^Defl/) bad++ } END { if (!count || bad) exit 1; printf "Deflate 原生库：%d\n", count }' > "$evidence/native-compression.txt"
printf '%s\n' 'alignment-zip-integrity-all-native-deflate' >> "$evidence/checks.txt"

phase='package-identity'
badging="$("$aapt2" dump badging "$signed_apk")"
printf '%s\n' "$badging" > "$evidence/badging.txt"
package_line="$(printf '%s\n' "$badging" | grep -E '^package:')"
if [[ "$package_line" != *"name='com.autonavi.amapautolite'"* ||
      "$package_line" != *"versionCode='26000001'"* ||
      "$package_line" != *"versionName='9.5.0.600013'"* ]] ||
   ! printf '%s\n' "$badging" | grep -E -q "^(minSdkVersion|sdkVersion):'21'$" ||
   ! printf '%s\n' "$badging" | grep -E -q "^targetSdkVersion:'24'$"; then
    printf '包名、版本或SDK身份与正式基线不一致\n' >&2
    exit 1
fi
printf '%s\n' 'package-version-min-target-sdk' >> "$evidence/checks.txt"

phase='original-dex-native-package'
# check-compose-package requires original.dex beside the supplied APK. Never replace
# this owner with a current build or skip the original DEX identity assertion.
node "$repo_root/scripts/check-compose-package.mjs" "$signed_apk" | tee "$evidence/package.txt"
printf '%s\n' 'adjacent-original-dex-native-hashes-dex-indices-dispatcher-metadata' >> "$evidence/checks.txt"

phase='content-dex'
dex_files=()
unzip -Z1 "$signed_apk" > "$evidence/zip-entries.txt"
while IFS= read -r name; do
    if [[ "$name" =~ ^classes([2-9]|[1-9][0-9]+)\.dex$ ]]; then
        unzip -p "$signed_apk" "$name" > "$evidence/$name"
        dex_files+=("$evidence/$name")
    fi
done < "$evidence/zip-entries.txt"
if [[ ${#dex_files[@]} -eq 0 ]]; then
    printf '候选缺少Compose内容DEX\n' >&2
    exit 1
fi
node "$repo_root/scripts/check-content-dex.mjs" "${dex_files[@]}" | tee "$evidence/content-dex.txt"
printf '%s\n' 'content-dex-closure-duplicates-static-entry' >> "$evidence/checks.txt"
phase='complete'
