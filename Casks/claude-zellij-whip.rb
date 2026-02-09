cask "claude-zellij-whip" do
  version "0.1.0"
  sha256 "9c6c5c454efcee3faaec5c4368175fee319022ea4faf3b9727f3df93f4babdf5"

  url "https://github.com/choru-k/claude-zellij-whip/releases/download/v#{version}/ClaudeZellijWhip.zip"
  name "ClaudeZellijWhip"
  desc "Smart macOS notifications for Claude Code in Zellij"
  homepage "https://github.com/choru-k/claude-zellij-whip"

  depends_on macos: ">= :ventura"

  app "ClaudeZellijWhip.app"

  zap trash: []
end
