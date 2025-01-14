# rust-dev-environment

My development environment setup for Rust projects.

This is designed to be used via `devcontainer cli` with `neovim`.

## Starting Container

There is a script to make binding and rebuilding easy.
It auto mounts the current directory as _workspace_.

```bash
.devcontainer/start_with_devcontainer_cli.sh
```

### Re-building

```bash
.devcontainer/start_with_devcontainer_cli.sh --rebuild
```

