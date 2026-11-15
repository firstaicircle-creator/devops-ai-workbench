---
description: Finish the current project - docs, lessons, tip, index, commit
argument-hint: [project folder, defaults to the one In progress]
---

Wrap up the project: $ARGUMENTS (if empty, use the project marked In progress in ROADMAP.md).

1. Check it actually runs: run its tests or the "How to run" steps where possible. Report honestly what was and wasn't verified.
2. Complete the README: How to run (copy-pasteable), Results (real output, numbers, screenshots paths), References. Set `**Status:** Done` only if it works.
3. Write LESSONS.md from this session: what broke, why, the fix, what I'd do differently. Explain concepts so I won't need to relearn them.
4. Append one tip to `docs/tips.md` and one dated line to `docs/learning-log.md`.
5. Move the item to Done in ROADMAP.md and run `scripts/update-index.sh`.
6. Draft a LinkedIn post from LESSONS.md using `templates/linkedin-post.md` and save it to `drafts/` (gitignored). No day counts.
7. If AWS was used: confirm `terraform destroy` ran and list any leftover resources.
8. Scan the diff for secrets and private job data, then commit with a clear message. Ask before pushing.

Finally, give me a 5-line summary I should read to understand what was built.
