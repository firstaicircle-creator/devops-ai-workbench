---
name: workbench
description: Public portfolio work in devops-ai-workbench - micro-projects, READMEs, LESSONS, roadmap, task updates, LinkedIn project posts and daily DevOps/AI tip posts. Use when building or documenting a project or drafting public content.
---

# Workbench

Follow `CLAUDE.md` in this repo. Key points:

- Public repo. Never read from or write to career-ops-private; never include private job data.
- No day counts or deadline wording anywhere public.
- Project flow: `/newproject` -> build -> `/wrapup`. Weekly: `/checkpoint`.
- AI code: pluggable backend via `AI_BACKEND` (ollama default, github-models, anthropic). Never create keys or set ANTHROPIC_API_KEY.

## Content drafting

- **Project post** (about one per week): from the project's LESSONS.md, using `templates/linkedin-post.md`. Hook = the problem; body = what AI did and one concrete result; end with the repo link. Under 200 words, no hype, no hashtag spam (3 max).
- **Tip post** (4-5 per week): one practical DevOps + AI tip from `docs/tips.md`, with a small command or snippet. Under 120 words.
- Save drafts to `drafts/` (gitignored). I schedule them myself in LinkedIn. Never auto-post.
- Content bank day: batch 5-7 drafts at once.
