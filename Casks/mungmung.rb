# Homebrew Cask formula for MungMung
#
# Personal Tap Installation:
#   brew tap choru-k/tap
#   brew install --cask mungmung
#
# To test locally:
#   brew install --cask ./Casks/mungmung.rb

cask "mungmung" do
  version "0.7.2"
  sha256 "0537a840d1172825f98fd75e537ee57ba362d6f75507de9d3dcdb79c2ca44d5b"

  url "https://github.com/choru-k/mungmung/releases/download/v#{version}/MungMung-#{version}.dmg"
  name "MungMung"
  desc "Native macOS stateful notification manager with CLI"
  homepage "https://github.com/choru-k/mungmung"

  depends_on macos: ">= :sonoma"

  app "MungMung.app"

  # Symlink the CLI binaries
  binary "#{appdir}/MungMung.app/Contents/MacOS/MungMung", target: "mung"
  binary "#{appdir}/MungMung.app/Contents/MacOS/MungGhosttyFocus", target: "mung-ghostty-focus"

  zap trash: [
    "~/.local/share/mung",
  ]

  caveats <<~EOS
    MungMung requires notification permissions.
    Grant permission when prompted on first run.

    CLI usage:
      mung add --title "Hello" --message "World"
      mung list
      mung help

      # Ghostty Accessibility helper
      mung-ghostty-focus --target "ghostty-pane:003"
  EOS
end
