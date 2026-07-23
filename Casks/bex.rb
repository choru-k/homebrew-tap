cask "bex" do
  version "0.5.0"
  sha256 "93635cb787dc4057d13f7ffb3b6a0affac1f5678eb39c0f1d2d7a620934b8279"

  url "https://github.com/choru-k/bex/releases/download/v#{version}/Bex.zip"
  name "Bex"
  desc "Grammar and expression checker powered by AI"
  homepage "https://github.com/choru-k/bex"

  depends_on macos: ">= :ventura"

  app "Bex.app"

  zap trash: [
    "~/Library/Application Support/com.bex.desktop",
    "~/Library/Caches/com.bex.desktop",
    "~/Library/Preferences/com.bex.desktop.plist",
  ]
end
