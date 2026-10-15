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

  uninstall quit: "com.kirill.givemesub"

  zap trash: [
    "~/Library/Application Support/Mozilla/NativeMessagingHosts/givemesub.json",
    "~/Library/Preferences/com.kirill.givemesub.plist",
  ]

  caveats <<~EOS
    Non-official tap: run `brew trust --tap kirhgoff/tap` once if Homebrew refuses to load it.
    First start asks for System Audio Recording. Toggle captions with: open givemesub://toggle
  EOS
end
