cask "bex" do
  version "0.5.12"
  sha256 "e78e3bcf28f424bb1473b292befe9354102c6db7f71a57ff02d322327d161db2"

  url "https://github.com/choru-k/bex/releases/download/v#{version}/Bex.zip"
  name "Bex"
  desc "Grammar and expression checker powered by AI"
  homepage "https://github.com/choru-k/bex"

  depends_on macos: :ventura

  app "Bex.app"

  zap trash: [
    "~/Library/Application Support/com.bex.desktop",
    "~/Library/Caches/com.bex.desktop",
    "~/Library/Preferences/com.bex.desktop.plist",
  ]
end
