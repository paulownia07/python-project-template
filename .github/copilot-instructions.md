# Repository Instructions

- Before making changes, inspect the relevant code and configuration. Keep changes focused on the user's request and preserve unrelated work.
- Target Python 3.14 or later, as declared in `pyproject.toml`. Use `uv` to manage project dependencies and run project tools.
- Follow the language-specific guidance in [python.instructions.md](./instructions/python.instructions.md) and [markdown.instructions.md](./instructions/markdown.instructions.md). Avoid duplicating their detailed rules here.
- Validate changes with relevant project checks, such as `uv run pytest`, `uv run ruff check .`, and `uv run ruff format --check .`. Report which checks were run and their results; state clearly when a check was not run.
- Use the repository skills for Git workflows: [git-create-branch](./skills/git-create-branch/SKILL.md), [git-create-issue](./skills/git-create-issue/SKILL.md), and [git-create-pr](./skills/git-create-pr/SKILL.md).
- Do not stage, commit, push, or publish changes unless the user explicitly asks. Preserve existing staged, unstaged, and untracked work.
