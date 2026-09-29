#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
if [[ $# -ne 1 || ! -f "$1" ]]; then
    printf '用法：%s 已签名候选包路径\n' "$0" >&2
    exit 2
fi
if [[ ! -f "$repo_root/.codex/local-context.properties" ]]; then
    printf '缺少本机配置：.codex/local-context.properties\n' >&2
    exit 1
fi
source "$repo_root/.codex/local-context.properties"
export JAVA_HOME="$JDK17_HOME"

signed_apk="$(cd "$(dirname "$1")" && pwd)/$(basename "$1")"
bash "$repo_root/scripts/resolve-content-deps.sh" >/dev/null
cache_root="$repo_root/.tmp/content-runtime-deps"

prepare_test_aar() {
    local filename="$1" url="$2" expected_aar="$3" expected_jar="$4" maven_cache="$5" jar_name="$6"
    local archive="$cache_root/$filename"
    if [[ ! -f "$archive" ]] || [[ "$(shasum -a 256 "$archive" | awk '{print $1}')" != "$expected_aar" ]]; then
        if [[ -f "$maven_cache" ]] &&
           [[ "$(shasum -a 256 "$maven_cache" | awk '{print $1}')" == "$expected_aar" ]]; then
            cp "$maven_cache" "$archive"
        else
            curl -fsSL --retry 2 --connect-timeout 15 --max-time 120 "$url" -o "$archive.tmp"
            if [[ "$(shasum -a 256 "$archive.tmp" | awk '{print $1}')" != "$expected_aar" ]]; then
                rm -f "$archive.tmp"
                printf '测试依赖哈希不匹配：%s\n' "$filename" >&2
                exit 1
            fi
            mv "$archive.tmp" "$archive"
        fi
    fi
    unzip -p "$archive" classes.jar > "$cache_root/$jar_name.tmp"
    if [[ "$(shasum -a 256 "$cache_root/$jar_name.tmp" | awk '{print $1}')" != "$expected_jar" ]]; then
        rm -f "$cache_root/$jar_name.tmp"
        printf '测试 class 哈希不匹配：%s\n' "$jar_name" >&2
        exit 1
    fi
    mv "$cache_root/$jar_name.tmp" "$cache_root/$jar_name"
}

prepare_test_aar monitor-1.7.2.aar \
    https://dl.google.com/dl/android/maven2/androidx/test/monitor/1.7.2/monitor-1.7.2.aar \
    868cc120d10d024b886fa157e1e1eaee0e6a8e5d55e7f765ef41d8fc0fea775b \
    d10797c3b5386a352f1601bc100cb3872d3841eda06a6216c7a5502479119206 \
    "$HOME/.m2/repository/androidx/test/monitor/1.7.2/monitor-1.7.2.aar" monitor.jar
prepare_test_aar espresso-idling-resource-3.6.1.aar \
    https://dl.google.com/dl/android/maven2/androidx/test/espresso/espresso-idling-resource/3.6.1/espresso-idling-resource-3.6.1.aar \
    bc63a8780f1c707724e389f530cb2e1a6847da97f6a8114604c002aba2fd86ca \
    fd8686b8b35f21486512971c690996ca8540773407d64ed7fd543cc6a8d74d83 \
    "$HOME/.m2/repository/androidx/test/espresso/espresso-idling-resource/3.6.1/espresso-idling-resource-3.6.1.aar" \
    espresso-idling-resource.jar

maven="${MAVEN_EXECUTABLE:-}"
if [[ -z "$maven" ]]; then
    maven="$(command -v mvn || true)"
fi
if [[ -z "$maven" && -x "$repo_root/apk-work/golden-icon-probe/apache-maven-3.9.11/bin/mvn" ]]; then
    maven="$repo_root/apk-work/golden-icon-probe/apache-maven-3.9.11/bin/mvn"
fi
if [[ -z "$maven" || ! -x "$maven" ]]; then
    printf '缺少 Maven；安装 Maven 或设置 MAVEN_EXECUTABLE 为可执行文件\n' >&2
    exit 1
fi

"$maven" -q -f "$repo_root/tests/content-host/pom.xml" -Dgolden.apk="$signed_apk" \
    -Dtest=GoldenRuntimeProbe test
