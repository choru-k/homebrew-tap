cask "bex" do
  version "0.7.3"
  sha256 "f54faca8c25b697e5abead153ebd112f52455ce0f98942337e0e5f15c541b389"

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
