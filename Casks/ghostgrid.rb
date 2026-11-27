cask "ghostgrid" do
  version "0.1.1"
  sha256 "56c6d9dd1c363f76dc6967f6e4c76a3c7193af283baec5ba85454566cb4c83e8"

  url "https://github.com/brettbergin/ghostgrid/releases/download/v#{version}/ghostgrid-#{version}.dmg"
  name "ghostgrid"
  desc "Terminal that tiles shells in a grid, built on libghostty"
  homepage "https://github.com/brettbergin/ghostgrid"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ghostgrid.app"
  binary "#{appdir}/ghostgrid.app/Contents/Resources/bin/gg"

  zap trash: [
    "~/Library/Application Support/ghostgrid",
    "~/Library/Logs/ghostgrid",
    "~/Library/Preferences/com.brettbergin.ghostgrid.plist",
    "~/Library/Saved Application State/com.brettbergin.ghostgrid.savedState",
  ]
end
