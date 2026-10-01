cask "orzma" do
  version "0.3.0"
  sha256 "f1ecbfc820691a2bf2aeb8769758bf024b3c85c8535d67d8f21d1b55ca9c5300"

  url "https://github.com/not-elm/orzma/releases/download/v#{version}/orzma-#{version}-arm64.dmg"
  name "orzma"
  desc "Terminal multiplexer as a native GUI app"
  homepage "https://github.com/not-elm/orzma"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "orzma.app"
  binary "#{appdir}/orzma.app/Contents/Resources/orzbrowser"
  binary "#{appdir}/orzma.app/Contents/Resources/orzmd"

  caveats do
    "If macOS blocks the app (un-notarized build), clear quarantine:\n" \
    "  xattr -dr com.apple.quarantine \"#{appdir}/orzma.app\""
  end
end
