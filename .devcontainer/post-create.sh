#!/usr/bin/env bash

uv lock && uv sync
chmod +x .githooks/commit-msg
git config core.hooksPath .githooks