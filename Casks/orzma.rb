cask "orzma" do
  version "0.2.0"
  sha256 "662608e2051902c61d4ebd201ecfaa3a39a933665c92e51fde258d2ade70b9f4"

  url "https://github.com/not-elm/orzma/releases/download/v#{version}/orzma-#{version}-arm64.zip"
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
