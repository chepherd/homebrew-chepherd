# homebrew-chepherd

Homebrew tap for [chepherd](https://chepherd.org) — a TUI supervisor for parallel AI coding agents.

## Install

```bash
brew tap chepherd/chepherd
brew install chepherd
```

## Verify

```bash
chepherd version
chepherd doctor
```

## Upgrade

```bash
brew update
brew upgrade chepherd
```

## Available formulae

| Formula | Version | Description |
|---|---|---|
| chepherd | 0.2.0-beta | TUI supervisor for parallel AI coding agents |

## See also

- Main repo: [github.com/chepherd/chepherd](https://github.com/chepherd/chepherd)
- Website: [chepherd.org](https://chepherd.org)
- License: MIT

## Formula update policy

For now, formula updates are committed manually after each chepherd release. Future automation: a goreleaser brew step that auto-bumps this formula — currently disabled pending cross-repo PAT (chepherd/chepherd#19).
