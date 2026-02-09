cask "claude-zellij-whip" do
  version "0.1.0"
  sha256 "6600428a8f73fa11c0b813eea61760a66973abd3462665625083b7580fe0319c"

  url "https://github.com/choru-k/claude-zellij-whip/releases/download/v#{version}/ClaudeZellijWhip.zip"
  name "ClaudeZellijWhip"
  desc "Smart macOS notifications for Claude Code in Zellij"
  homepage "https://github.com/choru-k/claude-zellij-whip"

  depends_on macos: ">= :ventura"

  app "ClaudeZellijWhip.app"

  zap trash: []
end
