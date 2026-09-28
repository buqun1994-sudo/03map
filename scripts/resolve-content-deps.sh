#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "$0")/.." && pwd)"
cache_root="$repo_root/.tmp/content-runtime-deps"
mkdir -p "$cache_root"

fetch_dependency() {
    local filename="$1" url="$2" expected="$3"
    local destination="$cache_root/$filename"
    if [[ ! -f "$destination" ]] || [[ "$(shasum -a 256 "$destination" | awk '{print $1}')" != "$expected" ]]; then
        printf '获取受控依赖：%s\n' "$filename" >&2
        curl -fsSL --retry 2 --connect-timeout 15 --max-time 120 "$url" -o "$destination.tmp"
        if [[ "$(shasum -a 256 "$destination.tmp" | awk '{print $1}')" != "$expected" ]]; then
            rm -f "$destination.tmp"
            printf '依赖 SHA-256 不匹配：%s\n' "$filename" >&2
            exit 1
        fi
        mv "$destination.tmp" "$destination"
    fi
}

fetch_dependency lottie-6.6.7.aar \
    https://repo.maven.apache.org/maven2/com/airbnb/android/lottie/6.6.7/lottie-6.6.7.aar \
    4ef8098c5224016d36585765853df4a970fa2632f64a392c008ce82161733672
fetch_dependency core-1.9.0.aar \
    https://dl.google.com/dl/android/maven2/androidx/core/core/1.9.0/core-1.9.0.aar \
    8bda3ee3a88887d54f6679fb6b6cd788629f73234ac91c8bbed924e721ec85b8
fetch_dependency collection-1.2.0.jar \
    https://dl.google.com/dl/android/maven2/androidx/collection/collection/1.2.0/collection-1.2.0.jar \
    16d77e8c443fa55fe9a6074d00445d520ca5c9f913cefdbf4828356255214e42
fetch_dependency okio-1.17.6.jar \
    https://repo.maven.apache.org/maven2/com/squareup/okio/okio/1.17.6/okio-1.17.6.jar \
    8e88b055523cc80613dfb844d598740e10ada62f4bd98304cdd140c5854cc3b6
fetch_dependency annotation-1.3.0.jar \
    https://dl.google.com/dl/android/maven2/androidx/annotation/annotation/1.3.0/annotation-1.3.0.jar \
    97dc45afefe3a1e421da42b8b6e9f90491477c45fc6178203e3a5e8a05ee8553

unzip -p "$cache_root/lottie-6.6.7.aar" classes.jar > "$cache_root/lottie.jar"
unzip -p "$cache_root/core-1.9.0.aar" classes.jar > "$cache_root/core.jar"
helpers="$(mktemp -d "$cache_root/core-helpers.XXXXXX")"
trap 'rm -rf "$helpers"' EXIT
unzip -q "$cache_root/core.jar" \
    'androidx/core/graphics/BlendModeCompat*.class' \
    'androidx/core/graphics/BlendModeUtils*.class' \
    'androidx/core/graphics/PaintCompat*.class' \
    'androidx/core/os/TraceCompat*.class' \
    'androidx/core/util/Pair.class' \
    'androidx/core/view/animation/PathInterpolatorCompat*.class' \
    'androidx/core/view/animation/PathInterpolatorApi14*.class' -d "$helpers"
"$JAVA_HOME/bin/jar" cf "$cache_root/core-runtime.jar" -C "$helpers" .
printf '%s:%s:%s:%s:%s\n' "$cache_root/lottie.jar" "$cache_root/core-runtime.jar" \
    "$cache_root/collection-1.2.0.jar" "$cache_root/okio-1.17.6.jar" "$cache_root/annotation-1.3.0.jar"
