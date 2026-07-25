# Initializ Homebrew Tap

Official [Homebrew](https://brew.sh) tap for [Initializ](https://initializ.ai) tools.

## Available packages

| Package | Description | Install |
| --- | --- | --- |
| `initializ` | Initializ platform CLI for CI pipelines ([releases](https://github.com/initializ/cli/releases)) | `brew install initializ/tap/initializ` |
| `forge` | Secure, portable AI Agent runtime ([repo](https://github.com/initializ/forge)) | `brew install initializ/tap/forge` |

## Upgrade

```bash
brew update
brew upgrade initializ   # or: forge
```

## Uninstall

```bash
brew uninstall initializ   # or: forge
```

## About

This tap is updated automatically by the release pipelines — `initializ` by [initializ/cli](https://github.com/initializ/cli) releases, `forge` by [initializ/forge](https://github.com/initializ/forge). No manual maintenance is required. For other install options (Linux, Windows, containers), see the respective release repos.
