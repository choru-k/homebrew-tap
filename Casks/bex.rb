cask "bex" do
  version "0.3.3"
  sha256 "bed3369c92a1719e64956201bc54393f5efeda8a4524fdade63ae54e61940da6"

  url "https://github.com/choru-k/bex/releases/download/v#{version}/Bex.zip"
  name "Bex"
  desc "Grammar and expression checker powered by AI"
  homepage "https://github.com/choru-k/bex"

  depends_on macos: ">= :ventura"
  depends_on formula: "node"

  app "Bex.app"
  binary "#{appdir}/Bex.app/Contents/Resources/bex", target: "bex"

  zap trash: [
    "~/Library/Application Support/com.bex.desktop",
    "~/Library/Caches/com.bex.desktop",
    "~/Library/Preferences/com.bex.desktop.plist",
  ]
end
