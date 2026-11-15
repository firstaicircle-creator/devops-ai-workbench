---
description: Start a new micro-project folder from the templates
argument-hint: <NN> <short-slug> "<title>"
---

Start a new project with arguments: $ARGUMENTS

1. Run `scripts/new-project.sh $ARGUMENTS`.
2. Ask me (briefly) for anything you can't infer: the problem, the AI's role, and the AI backend. Default backend: `ollama`.
3. Fill the **Problem**, **AI's role** and a first **Architecture** sketch in the new README. Leave Results and Lessons as TODO.
4. Move the item to "In progress" in ROADMAP.md.
5. Propose a 2-4 hour build plan as a checklist (build, test, README, LESSONS, /wrapup, tip drafted) that I can paste into the Trello card.
6. If the project touches AWS, show the AWS Day-1 checklist (`docs/aws-day1-checklist.md`) and confirm the budget alert before any `terraform apply`.

Do not commit yet.
