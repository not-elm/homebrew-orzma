cask "orzma" do
  version "0.2.0"
  sha256 "0f02801a3314edaaa10b827bc7b2b9fb4650101e3a54e554a0ee234f1464c339"

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
