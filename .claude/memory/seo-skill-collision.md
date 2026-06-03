---
name: seo-skill-collision
description: "Why the personal `seo` skill symlink was removed — claude-seo plugin command collision"
metadata: 
  node_type: memory
  type: project
  originSessionId: 7ac19eef-7092-40ce-9c55-21ce1f75dacf
---

The personal `seo` and `seo-audit` skills (installed from `addyosmani/web-quality-skills` into `~/.agents/skills/`, symlinked into `~/.claude/skills/`) shadowed the `claude-seo` plugin's `claude-seo:seo` and `claude-seo:seo-audit` skills on the unqualified `/seo` and `/seo-audit` commands. On 2026-06-02 both discovery symlinks (`~/.claude/skills/seo` and `~/.claude/skills/seo-audit`) were removed to disable them, so those commands route to the plugin instead.

**Why:** User installed the claude-seo plugin (AgriciDaniel/claude-seo) and wants `/seo ...` subcommands (e.g. `/seo google setup`) to hit the plugin, not the personal web-quality skill.

**How to apply:** Skill content + the installer lock entry in `~/.agents/.skill-lock.json` are intact — re-enable with `ln -s ~/.agents/skills/seo ~/.claude/skills/seo`. The `~/.agents` skills manager isn't on PATH, so it won't auto-resync, but re-running that installer could restore the symlink. The remaining true name-collision is `seo-audit` vs `claude-seo:seo-audit` (still active unless also disabled); `ai-seo` and `programmatic-seo` do NOT collide. See [[dotfiles-layout]].
