# YouTube agent skill — Antigravity port

Port of [Jakeschincariol/youtube-agent-skill](https://github.com/Jakeschincariol/youtube-agent-skill)
(MIT) for Google Antigravity, converted with
[skill-forge](https://github.com/AgriciDaniel/skill-forge) `convert_skill.py --target antigravity`
plus manual fixes.

## Install

```bash
bash install.sh                    # global: ~/.gemini/antigravity/skills/
bash install.sh --project /path/to/workspace   # workspace: .agent/skills/
```

Then fill in `~/.gemini/antigravity/youtube/voice.md` (the installer copies the template there),
or ask the agent: "write my voice.md from these three videos". Optionally paste `GEMINI.md` into
your workspace-root `GEMINI.md`.

Requires `python3` on PATH (no packages). Keep all `yt-*` folders together: `chapters.py` and
`retention.py` import `../yt-edit/deadair.py`, and `swipe.py` reads `../yt-script/hooks.json`.

## What changed from the Claude version

- `~/.claude/youtube/voice.md` -> `~/.gemini/antigravity/youtube/voice.md`
- `python3 tool.py` -> `python3 {{SKILL_PATH}}/tool.py` (Antigravity template variable), with a
  note in each SKILL.md saying the tools live next to it
- `/yt-xxx` slash commands -> "the `yt-xxx` skill" (Antigravity activates by description)
- skill-forge bugs worked around: folded `description: >-` was emitted empty, and tools at the skill
  root (not under `scripts/`) were not copied
- Python tools, `hooks.json` and skill instructions are otherwise unchanged
# youtube-agent-skill-antigravity
