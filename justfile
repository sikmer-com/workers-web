install:
  pnpm install --frozen-lockfile

lint: install
  pnpm astro check

dev: install
  pnpm dev

build: install
  pnpm build

preview:
  pnpm preview

claude:
  #!/usr/bin/env bash
  export TMPDIR="./.tmp"
  mkdir -p ${TMPDIR}
  claude
