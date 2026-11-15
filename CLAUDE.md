# devops-ai-workbench: rules for Claude

Public portfolio repo. Read by recruiters.

## Never

- Put private job data here (phone, salary, company names, applications, rejections). That lives in career-ops-private, and data never flows from there to here.
- Write day counts, deadlines or "Day N" wording anywhere.
- Commit secrets, `.env` files or API keys. Never set or suggest ANTHROPIC_API_KEY.
- Backdate commits or describe work that was not run.
- Run `terraform apply` without confirming the AWS budget alert exists; always finish with `terraform destroy` and a leftover-resource check.
- Push without asking me.
- Copy or name any former employer's internal training material, programmes, or environments. Projects here are original re-implementations.
- Bypass the local pre-commit guard (`--no-verify`).

## Conventions

- Project folder: `projects/project-NN-short-slug/` with README.md, LESSONS.md, src/, infra/, tests/. Create with `scripts/new-project.sh`.
- README sections, in order: Problem, AI's role, Architecture, How to run, Results, Lessons learned, References. Keep `**Status:**` line accurate (Planned / In progress / Done).
- AI code uses a pluggable backend selected by `AI_BACKEND` = `ollama` (default) | `github-models` | `anthropic`.
- Heavy workloads (Docker, k8s, Ollama, Prometheus) run in Codespaces or AWS, not on the 8 GB laptop.
- After changing projects, run `scripts/update-index.sh`.
- Markdown must pass markdownlint (`.markdownlint.json`).
- Be brief. Explain *why* in LESSONS.md so nothing needs relearning.

## Commands

`/newproject`, `/wrapup`, `/checkpoint` in `.claude/commands/`.
