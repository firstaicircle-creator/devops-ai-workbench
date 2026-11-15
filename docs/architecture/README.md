# Architecture

Diagrams and notes for how the projects fit together, ending in the capstone AI-Ops platform.

## AI backend pattern

Every AI project calls a small adapter selected by `AI_BACKEND`:

| Backend | Use | Cost |
| --- | --- | --- |
| `ollama` | Local or Codespaces model | Free |
| `github-models` | GitHub Actions and CI steps | Free tier |
| `anthropic` | Optional demos only | Paid, hard monthly limit |
