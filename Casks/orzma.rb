cask "orzma" do
  version "0.6.1"
  sha256 "8cd9284f8067d0fd0a53961d803e74f951fe24bb672f08584f9a672e613f457b"

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
