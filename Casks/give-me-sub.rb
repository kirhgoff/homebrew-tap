cask "give-me-sub" do
  version "0.1.0"
  sha256 "0a01d64965133ff7156d4ea97ab3792c1c064b31b4b770e877e5b9816d7a0798"

  url "https://github.com/kirhgoff/give-me-sub/releases/download/v#{version}/GiveMeSub.zip"
  name "GiveMeSub"
  desc "Live on-device captions for everything that plays"
  homepage "https://github.com/kirhgoff/give-me-sub"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "GiveMeSub.app"

  uninstall quit: "com.kirhgoff.givemesub"

  zap trash: "~/Library/Containers/com.kirhgoff.givemesub"

  caveats <<~EOS
    Non-official tap: run `brew trust --tap kirhgoff/tap` once if Homebrew refuses to load it.
    GiveMeSub lives in the menu bar (no Dock icon). Toggle captions with ⌃⌥⌘C or: open givemesub://toggle
    First start asks for System Audio Recording; allow it, or captions stay empty.
  EOS
end
