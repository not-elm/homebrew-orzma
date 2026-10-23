cask "orzma" do
  version "0.6.0"
  sha256 "92aa08e8eafb5bc7ecea789e9af07ae6fbf0106dd97cdb7cf13117272c27fd27"

  url "https://github.com/not-elm/orzma/releases/download/v#{version}/orzma-#{version}-arm64.dmg"
  name "orzma"
  desc "Terminal emulator that renders web pages inside the terminal"
  homepage "https://github.com/not-elm/orzma"

  depends_on arch: :arm64
  depends_on :macos

  app "orzma.app"
  binary "#{appdir}/orzma.app/Contents/Resources/orzbrowser"
  binary "#{appdir}/orzma.app/Contents/Resources/orzmd"

  caveats do
    "If macOS blocks the app (un-notarized build), clear quarantine:\n" \
    "  xattr -dr com.apple.quarantine \"#{appdir}/orzma.app\""
  end
end
