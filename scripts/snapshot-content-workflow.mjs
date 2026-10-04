#!/usr/bin/env node
// Freeze versionable build inputs for isolated validation; never copy credentials or generated DEX.
import fs from 'node:fs';
import path from 'node:path';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import { sourceFingerprint, assertOwnedPath } from './content-workflow.mjs';
const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const ignored = path.join(root, '.tmp');
fs.mkdirSync(ignored, { recursive: true });
const snapshot = assertOwnedPath(fs.mkdtempSync(path.join(ignored, 'workflow-snapshot-')), ignored);
const run = args => { const result = spawnSync('rsync', args, { stdio: 'inherit' }); if (result.status !== 0) throw new Error(`Snapshot copy failed (${result.status})`); };
const before = sourceFingerprint(root);
const inputs = ['source', 'scripts', 'ui-preview', 'docs', '.agents', '.codex', 'AGENTS.md', 'README.md', '.gitignore'];
for (const name of inputs) {
  const source = path.join(root, name), destination = path.join(snapshot, name);
  if (!fs.existsSync(source)) continue;
  if (fs.statSync(source).isDirectory()) {
    fs.mkdirSync(destination, { recursive: true });
    run(['-a', '--exclude=build/', '--exclude=.gradle/', '--exclude=.kotlin/', '--exclude=node_modules/', '--exclude=local-context.properties', source + '/', destination + '/']);
  } else fs.copyFileSync(source, destination);
}
const copied = sourceFingerprint(snapshot), after = sourceFingerprint(root);
if (before.sha256 !== after.sha256 || copied.sha256 !== before.sha256) throw new Error('Source changed during snapshot; keep rejected snapshot for diagnosis and retry once inputs settle');
const configuration = path.join(root, '.codex/local-context.properties');
if (fs.existsSync(configuration)) {
  fs.mkdirSync(path.join(snapshot, '.codex'), { recursive: true });
  fs.symlinkSync(configuration, path.join(snapshot, '.codex/local-context.properties'));
}
// Git is read-only provenance for checks/old helper oracle, never an isolated commit target.
fs.writeFileSync(path.join(snapshot, '.git'), `gitdir: ${path.join(root, '.git')}\n`);
fs.writeFileSync(path.join(snapshot, 'snapshot-source.json'), JSON.stringify({ origin: root, sourceSha256: before.sha256, files: before.files,
  createdAt: new Date().toISOString(), purpose: 'isolated workflow verification; not an integrated product acceptance' }, null, 2) + '\n');
console.log(snapshot);
