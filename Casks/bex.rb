cask "bex" do
  version "0.5.3"
  sha256 "2e7e1b2b78d6c7aba83b416c1e104327ec3a5b66e05e68e4a6124d8dd47dbf21"

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
