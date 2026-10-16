cask "give-me-sub" do
  version "0.1.1"
  sha256 "57fad5e441328e39756fcae874cd3cd181aff51daefdc8478ef67d77865b6a8d"

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
