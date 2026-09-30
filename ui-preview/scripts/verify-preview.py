#!/usr/bin/env python3
"""Build one immutable preview candidate and index its real Compose captures.

This HTML is a review report, never a replacement implementation of the Android UI.
No device, adb, install task, production signing key, or vehicle API is used.
"""
from __future__ import annotations

import argparse
import hashlib
import html
import json
import os
from pathlib import Path
import struct
import subprocess
import time
from datetime import datetime, timezone
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[1]


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def sources() -> dict[str, str]:
    candidates = [ROOT / name for name in (
        "build.gradle.kts", "settings.gradle.kts", "gradle.properties", "gradlew",
        "app/build.gradle.kts", "content-ui/build.gradle.kts",
        "scripts/verify-preview.py",
        "gradle/wrapper/gradle-wrapper.properties", "gradle/wrapper/gradle-wrapper.jar",
    )]
    for folder in (ROOT / "app/src", ROOT / "content-ui/src"):
        candidates.extend(p for p in folder.rglob("*") if p.is_file())
    return {str(p.relative_to(ROOT)): sha256(p) for p in sorted(candidates) if p.is_file()}


def png_size(path: Path) -> tuple[int, int]:
    with path.open("rb") as stream:
        head = stream.read(24)
    if head[:8] != b"\x89PNG\r\n\x1a\n" or head[12:16] != b"IHDR":
        raise RuntimeError(f"Invalid PNG: {path.name}")
    return struct.unpack(">II", head[16:24])


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--offline", action="store_true", help="Require all Gradle dependencies to be cached")
    args = parser.parse_args()
    before = sources()
    started = time.time()
    command = [str(ROOT / "gradlew"), "--console=plain", "--rerun-tasks"]
    if args.offline:
        command.append("--offline")
    command.extend((":app:assembleDebug", ":app:testDebugUnitTest", ":content-ui:testDebugUnitTest", ":app:lintDebug", ":content-ui:lintDebug"))
    subprocess.run(command, cwd=ROOT, check=True)
    after = sources()
    if before != after:
        raise RuntimeError("Source changed during verification; report rejected. Run again on a stable candidate.")

    suites = []
    for module in ("app", "content-ui"):
        directory = ROOT / module / "build/test-results/testDebugUnitTest"
        reports = sorted(directory.glob("TEST-*.xml"))
        if not reports:
            raise RuntimeError(f"Missing test reports for {module}")
        for report in reports:
            if report.stat().st_mtime < started:
                raise RuntimeError(f"Stale test report: {report.name}")
            suite = ET.parse(report).getroot()
            entry = {"name": suite.attrib["name"]}
            entry.update({key: int(suite.attrib[key]) for key in ("tests", "failures", "errors", "skipped")})
            if entry["failures"] or entry["errors"] or entry["skipped"] or not entry["tests"]:
                raise RuntimeError(f"Unverified test suite: {entry}")
            suites.append(entry)

    frames_dir = ROOT / "content-ui/build/frames"
    frames = []
    for frame in sorted(frames_dir.glob("*.png")):
        # A prior candidate's image must never be silently included as new evidence.
        if frame.stat().st_mtime < started:
            continue
        width, height = png_size(frame)
        frames.append({"file": str(frame.relative_to(ROOT)), "sha256": sha256(frame), "width": width, "height": height})
    if not frames:
        raise RuntimeError("No fresh native Compose captures were produced")
    for size in ("320x810", "480x810"):
        for theme in ("light", "dark"):
            for state in ("ready", "sources-dialog-window", "empty", "unavailable", "lyrics-empty"):
                expected = f"{size}-{theme}-{state}.png"
                if not any(Path(f["file"]).name == expected for f in frames):
                    raise RuntimeError(f"Missing current-candidate capture: {expected}")

    apk = ROOT / "app/build/outputs/apk/debug/app-debug.apk"
    if not apk.is_file():
        raise RuntimeError("Preview APK missing")
    report_dir = ROOT / "build/review"
    report_dir.mkdir(parents=True, exist_ok=True)
    manifest = {
        "generatedUtc": datetime.now(timezone.utc).isoformat(),
        "identity": "com.icar03.content.preview",
        "scope": "First-layer mock-data UI only; no vehicle or Amap integration",
        "captureMethod": "Actual AndroidComposeView.draw under Robolectric Native Graphics; not device Surface composition",
        "visualApproval": "Pending: objective tests do not establish aesthetic approval",
        "apk": {"file": str(apk.relative_to(ROOT)), "sha256": sha256(apk)},
        "sources": after, "suites": suites, "frames": frames,
    }
    (report_dir / "manifest.json").write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    total = sum(s["tests"] for s in suites)
    cards = []
    for frame in frames:
        path = ROOT / frame["file"]
        url = html.escape(os.path.relpath(path, report_dir), quote=True)
        caption = html.escape(path.name)
        cards.append(f'<figure><a href="{url}"><img loading="lazy" src="{url}" alt="{caption}" width="{frame["width"]}" height="{frame["height"]}"></a><figcaption>{caption}</figcaption></figure>')
    document = f'''<!doctype html>
<html lang="zh-CN"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>第一层 Compose 实际渲染审阅</title>
<style>body{{font-family:system-ui,sans-serif;margin:24px;background:#e8e8e8;color:#202020}}header{{max-width:1000px;margin:auto}}main{{display:grid;grid-template-columns:repeat(auto-fit,minmax(280px,480px));gap:24px;justify-content:center}}figure{{margin:0;background:white;padding:12px;border-radius:12px}}img{{max-width:100%;height:auto;display:block;margin:auto}}figcaption{{font-size:12px;overflow-wrap:anywhere;padding-top:10px}}code{{overflow-wrap:anywhere}}</style>
<header><h1>第一层 Compose 实际渲染审阅</h1><p>{total}项测试通过 · {len(frames)}张本候选截图。点击图片查看原始像素。</p>
<p>这是截图索引，不是网页替代 UI。截图来自 Android Compose 视图树；不代表车机运行、系统阴影或主观美观已通过。</p>
<p>包 SHA-256：<code>{manifest["apk"]["sha256"]}</code> · <a href="manifest.json">源文件、截图和测试证据清单</a></p></header>
<main>{''.join(cards)}</main></html>'''
    (report_dir / "index.html").write_text(document, encoding="utf-8")
    print(f"VERIFIED tests={total} fresh_frames={len(frames)} visual_approval=pending")
    print(f"REPORT {report_dir / 'index.html'}")


if __name__ == "__main__":
    main()
