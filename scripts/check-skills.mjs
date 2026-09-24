#!/usr/bin/env node

import { existsSync, readdirSync, readFileSync, statSync } from "node:fs";
import { basename, dirname, join, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const skillsRoot = join(root, ".agents", "skills");
const requiredSkills = [
  "amap-code-map",
  "rule-discovery",
  "skill-authoring",
  "task-closeout",
  "template-feedback",
];
const failures = [];

function read(relativePath) {
  const path = join(root, relativePath);
  if (!existsSync(path)) {
    failures.push(`缺少文件：${relativePath}`);
    return "";
  }
  return readFileSync(path, "utf8");
}

function parseFrontmatter(content, skillName) {
  const normalized = content.replace(/\r\n/g, "\n");
  if (!normalized.startsWith("---\n")) {
    failures.push(`${skillName}/SKILL.md 缺少 YAML frontmatter 起始分隔符`);
    return {};
  }
  const endIndex = normalized.indexOf("\n---\n", 4);
  if (endIndex === -1) {
    failures.push(`${skillName}/SKILL.md 缺少 YAML frontmatter 结束分隔符`);
    return {};
  }

  const fields = {};
  for (const line of normalized.slice(4, endIndex).trim().split("\n")) {
    const match = line.match(/^([A-Za-z][A-Za-z0-9_-]*):\s*(.*)$/);
    if (!match) {
      failures.push(`${skillName}/SKILL.md frontmatter 行格式不合法：${line}`);
      continue;
    }
    fields[match[1]] = match[2].replace(/^['"]|['"]$/g, "").trim();
  }
  return fields;
}

function checkSkill(skillDir) {
  const skillName = basename(skillDir);
  if (!/^[a-z0-9-]{1,63}$/.test(skillName)) {
    failures.push(`Skill 目录名不合法：${skillName}`);
  }

  const skillPath = join(skillDir, "SKILL.md");
  if (!existsSync(skillPath)) {
    failures.push(`缺少 ${skillName}/SKILL.md`);
    return;
  }

  const content = readFileSync(skillPath, "utf8");
  const fields = parseFrontmatter(content, skillName);
  const allowedFields = new Set(["name", "description"]);
  for (const field of Object.keys(fields)) {
    if (!allowedFields.has(field)) {
      failures.push(`${skillName}/SKILL.md frontmatter 不应包含字段：${field}`);
    }
  }
  if (fields.name !== skillName) {
    failures.push(`${skillName}/SKILL.md name 必须等于目录名`);
  }
  if (!fields.description || fields.description.length < 20) {
    failures.push(`${skillName}/SKILL.md description 过短或缺失`);
  }
  if (!content.replace(/\r\n/g, "\n").split("\n---\n").slice(1).join("\n---\n").trim()) {
    failures.push(`${skillName}/SKILL.md 正文为空`);
  }
  if (/\[TODO|TODO:/.test(content)) {
    failures.push(`${skillName}/SKILL.md 仍包含初始化占位符`);
  }

  const yamlPath = join(skillDir, "agents", "openai.yaml");
  if (!existsSync(yamlPath)) {
    failures.push(`缺少 ${skillName}/agents/openai.yaml`);
    return;
  }
  const yaml = readFileSync(yamlPath, "utf8");
  for (const key of ["display_name", "short_description", "default_prompt"]) {
    if (!new RegExp(`^\\s*${key}:\\s*`, "m").test(yaml)) {
      failures.push(`${skillName}/agents/openai.yaml 缺少 ${key}`);
    }
  }
  if (!yaml.includes(`$${skillName}`)) {
    failures.push(`${skillName}/agents/openai.yaml 的 default_prompt 必须提及 $${skillName}`);
  }
}

if (!existsSync(skillsRoot)) {
  failures.push("缺少 .agents/skills 目录");
} else {
  const skillDirs = readdirSync(skillsRoot)
    .map((entry) => join(skillsRoot, entry))
    .filter((entry) => statSync(entry).isDirectory())
    .sort();
  const actualNames = new Set(skillDirs.map((entry) => basename(entry)));
  for (const skillName of requiredSkills) {
    if (!actualNames.has(skillName)) failures.push(`缺少项目必备 Skill：${skillName}`);
  }
  for (const skillDir of skillDirs) checkSkill(skillDir);
}

const route = read("AGENTS.md");
const docsIndex = read("docs/README.md");
if (!route.includes(".agents/skills/amap-code-map/SKILL.md")) {
  failures.push("AGENTS.md 未路由 amap-code-map");
}
if (!docsIndex.includes(".agents/skills/")) {
  failures.push("docs/README.md 未路由项目 Skill");
}

if (failures.length > 0) {
  console.error("Skills 检查失败：");
  for (const failure of failures) console.error(`- ${failure}`);
  process.exit(1);
}

console.log(`Skills 检查通过（${requiredSkills.length} 个必备 Skill）。`);
