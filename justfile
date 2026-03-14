install:
  pnpm install --frozen-lockfile
  pnpm exec playwright install --with-deps chromium

lint: install
  pnpm astro check

dev: install
  pnpm dev

build: install
  pnpm build

preview: build
  pnpm preview

test: install
  pnpm exec playwright test

claude:
  #!/usr/bin/env bash
  export TMPDIR="./.tmp"
  mkdir -p ${TMPDIR}
  claude
