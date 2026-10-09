cask "give-me-sub" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
