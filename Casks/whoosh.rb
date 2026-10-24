cask "whoosh" do
  version "0.2.0"
  sha256 "82227b249c3cc201d44dd6bee1e23fae1b518211f4eebefb5b8fab0287190f1c"

  url "https://github.com/srics96/Whoosh/releases/download/v#{version}/Whoosh.dmg"
  name "Whoosh"
  desc "Switch AI coding agents without losing context"
  homepage "https://github.com/srics96/Whoosh"

  depends_on macos: :ventura

  app "Whoosh.app"

  zap trash: "~/Library/Application Support/Whoosh"

  # Whoosh is ad-hoc signed, not Apple-notarized. Homebrew removed --no-quarantine (5.0) and
  # sandboxes install steps, so the cask cannot clear the flag for you. After install, approve
  # it once:  xattr -dr com.apple.quarantine "/Applications/Whoosh.app"  (or right-click > Open).
  caveats <<~EOS
    Whoosh is ad-hoc signed, not notarized, so macOS quarantines it on first launch.
    Approve it once with:
      xattr -dr com.apple.quarantine "#{appdir}/Whoosh.app"
    or right-click Whoosh in Applications and choose Open.
  EOS
end
