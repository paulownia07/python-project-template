---
description: "Use when writing or editing Python source, stubs, or notebooks. Follow this project's Ruff linting, formatting, typing, import, and docstring conventions."
applyTo: "**/*.{py,pyi,ipynb}"
---

# Python Coding Conventions

Follow the Ruff configuration in `pyproject.toml`. The project targets Python 3.14, uses a maximum line length of 88 characters, and uses four spaces for indentation.

## Formatting

- Use double quotes for strings.
- Format Python code with Ruff (`uv run ruff format .`); do not make unrelated formatting changes.
- Preserve trailing commas where they keep multiline expressions stable.
- Keep code compatible with Python 3.14 and the project's `requires-python` declaration.

## Linting and imports

- Resolve Ruff `E` (pycodestyle), `F` (Pyflakes), `I` (import sorting), `D` (pydocstyle), and `ANN` (flake8-annotations) violations.
- Keep imports organized with Ruff's import sorter.
- Do not introduce unused imports, undefined names, or avoidable style violations.
- Add type annotations to function parameters and return values. Avoid `Any` unless it is necessary and justified.
- Write docstrings for public modules, classes, and functions, following Ruff's default pydocstyle conventions.
- Tests are exempt from docstring rules. Package `__init__.py` files are exempt from the missing-module-docstring rule.

## Validation

- Run `uv run ruff format .` and `uv run ruff check .` for Python changes.
- Keep the code clear and maintainable; do not change Ruff configuration or suppress rules to bypass a violation without a specific reason.
