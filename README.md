# Heard — Homebrew tap

Install [Heard](https://heard.dev) — the voice layer for your AI coding agents — with Homebrew:

```sh
brew install --cask heardlabs/heard/heard
```

That downloads the notarized app and installs it to `/Applications`, no drag-and-drop.

Heard updates itself, so `brew upgrade` stays out of its way. To remove it completely:

```sh
brew uninstall --cask heard
brew uninstall --zap --cask heard   # also removes Heard's settings/data
```

Prefer not to use the terminal? Just download from **[heard.dev](https://heard.dev)**.
