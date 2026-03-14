# Meta
Keep this file terse and succinct. It is for Claude agent consumption, not human-readable documentation.

# Task runner: just
Use `just <recipe>` for all project tasks. Run `just --list` to see available recipes.

# System dependencies: devbox
All system tools are managed via devbox. Run `devbox shell` to enter the environment. Packages are declared in `devbox.json`.

# GitHub Actions
- Use `jetify-com/devbox-install-action` to manage all CI dependencies via devbox
- All CI steps must invoke `just` recipes via `devbox run -- just <recipe>`, not direct tool commands
- GitHub Actions must never call package manager commands (pnpm, npm, etc.) directly — only `just` recipes
- justfile recipes must declare all dependencies (e.g. `build: install`) so any recipe is self-contained and runnable standalone

# Stack
- Framework: Astro 6 with `@astrojs/cloudflare` adapter
- Hosting: Cloudflare Pages
- Package manager: pnpm (never use npm or yarn)
- Node: 25.x (devbox)
