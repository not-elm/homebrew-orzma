cask "orzma" do
  version "0.2.1"
  sha256 "8f3378070afaf5246f6df8331115f47aff6e6800186cce60e942e7fe85a913fa"

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
