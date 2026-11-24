# YouTube agent skills

Optional workspace rule. Copy this into your workspace-root `GEMINI.md` so the agent knows the
eleven `yt-*` skills exist and how they hand off to each other (Claude Code used `/yt-*` slash
commands for this; Antigravity picks skills by description).

| skill | use it for |
| --- | --- |
| `yt-script` | an idea into a script; five hooks off 21 formulas, scored |
| `yt-package` | title + thumbnail as one pairing, linted |
| `yt-edit` | transcript into an edit decision list (dead air, filler, retakes) |
| `yt-comment` | triage comments, draft replies, pick the pin |
| `yt-plan` | a week of uploads sized to real hours |
| `yt-viral` | what works in the niche, ranked by multiple over own-channel median |
| `yt-retention` | read a Studio retention export: hook leak, cliffs, slide |
| `yt-shorts` | find the Shorts inside a long video |
| `yt-seo` | description, tags, the three queries to win |
| `yt-chapters` | validated chapters from a transcript |
| `yt-audit` | whole-channel audit ending in ONE fix |

Every skill reads the voice profile at `~/.gemini/antigravity/youtube/voice.md`.
Nothing publishes: every run ends with "ship it, or change it?".
