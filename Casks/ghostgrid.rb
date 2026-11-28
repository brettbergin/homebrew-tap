cask "ghostgrid" do
  version "0.3.1"
  sha256 "63f2055426d8271a8bff041f708b35d3787e7a6a8344f76651d50916442c56d3"

  url "https://github.com/brettbergin/ghostgrid/releases/download/v#{version}/ghostgrid-#{version}.dmg"
  name "ghostgrid"
  desc "Terminal that tiles shells in a grid, built on libghostty"
  homepage "https://github.com/brettbergin/ghostgrid"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ghostgrid.app"
  binary "#{appdir}/ghostgrid.app/Contents/Resources/bin/gg"

  zap trash: [
    "~/Library/Application Support/ghostgrid",
    "~/Library/Caches/com.brettbergin.ghostgrid",
    "~/Library/HTTPStorages/com.brettbergin.ghostgrid",
    "~/Library/Logs/ghostgrid",
    "~/Library/Preferences/com.brettbergin.ghostgrid.plist",
    "~/Library/Saved Application State/com.brettbergin.ghostgrid.savedState",
  ]
end
