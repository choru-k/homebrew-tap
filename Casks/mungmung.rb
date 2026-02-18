# Homebrew Cask formula for MungMung
#
# Personal Tap Installation:
#   brew tap choru-k/tap
#   brew install --cask mungmung
#
# To test locally:
#   brew install --cask ./Casks/mungmung.rb

cask "mungmung" do
  version "0.6.2"
  sha256 "697cc94c70a41f3c4d0b2c4731d5d1241bff78f51d3c66c035547a0c566c91ea"

  url "https://github.com/choru-k/mungmung/releases/download/v#{version}/MungMung-#{version}.dmg"
  name "MungMung"
  desc "Native macOS stateful notification manager with CLI"
  homepage "https://github.com/choru-k/mungmung"

  depends_on macos: ">= :sonoma"

  app "MungMung.app"

  # Symlink the CLI binary as 'mung'
  binary "#{appdir}/MungMung.app/Contents/MacOS/MungMung", target: "mung"

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
  EOS
end
