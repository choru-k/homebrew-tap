cask "bex" do
  version "0.5.2"
  sha256 "7f858743b0c0d9c39590e607248778f9f6b5ef6f0d3e7837b111b51e94cbb230"

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
