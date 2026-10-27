# Canonical Homebrew cask for Heard.
#
# This is the source of truth we submit to homebrew-cask CORE (so users get the
# clean `brew install --cask heard`). Once accepted, Homebrew's own autobump keeps
# the live cask current via the `livecheck` block below — no per-release work from
# us. The release build (packaging/build-app.sh --notarize) also auto-refreshes the
# `version` + `sha256` here from the just-built, stapled DMG so this copy never rots.
#
# Until it lands in core, this same file also installs from a tap:
#   brew install --cask <this-file>   (or via a heardlabs/homebrew-heard tap).
cask "heard" do
  version "2.0.8"
  sha256 "5442347b865136e330b38f8167f79448e76917f70dc2ef6d63434e30e77139b1"

  url "https://github.com/heardlabs/heard/releases/download/v#{version}/Heard-v#{version}.dmg"
  name "Heard"
  desc "Voice layer for your AI coding agents"
  homepage "https://heard.dev/"

  # Lets Homebrew's autobump detect new releases and open version+sha256 bump PRs
  # automatically once this is in core — the "proper" auto-bump, no tap hacks.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true          # Heard self-updates in place; brew stays out of its way.
  depends_on macos: :sonoma  # minimum; LSMinimumSystemVersion 14.0.

  app "Heard.app"

  zap trash: [
    "~/.heard",
    "~/Library/Application Support/heard",
  ]
end
