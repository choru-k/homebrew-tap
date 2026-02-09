cask "claude-zellij-whip" do
  version "0.1.0"
  sha256 "7c72f86066fb0764a672d0ebc4e183eabc353cd6dfaccf1538a77431d4185c7d"

  url "https://github.com/choru-k/claude-zellij-whip/releases/download/v#{version}/ClaudeZellijWhip.zip"
  name "ClaudeZellijWhip"
  desc "Smart macOS notifications for Claude Code in Zellij"
  homepage "https://github.com/choru-k/claude-zellij-whip"

  depends_on macos: ">= :ventura"

  app "ClaudeZellijWhip.app"

  zap trash: []
end
