cask "orzma" do
  version "0.5.0"
  sha256 "05b35ef5b5959ad5b0b94894f57679fc55d41e9081546f535c61b65a99206474"

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
