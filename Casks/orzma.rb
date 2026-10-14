cask "orzma" do
  version "0.4.0"
  sha256 "9ff52cf9d7e14276c088828b735e59950d0ded76ffec60a5e150c102b2f52c7b"

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
