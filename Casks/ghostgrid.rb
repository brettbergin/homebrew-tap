cask "ghostgrid" do
  version "0.3.0"
  sha256 "a621d0ca9171ee39ffbf9cdc1c1a469af9abe4676618a1a646b48f1b12e56394"

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
