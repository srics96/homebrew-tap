cask "whoosh" do
  version "0.2.2"
  sha256 "ead9c8ce630c9cbf4e54f9607bce3fa66be2aae6bb109f0dd2ec8c791fa29ad0"

  url "https://github.com/srics96/Whoosh/releases/download/v#{version}/Whoosh.dmg"
  name "Whoosh"
  desc "Switch AI coding agents without losing context"
  homepage "https://github.com/srics96/Whoosh"

  depends_on macos: :ventura

  app "Whoosh.app"

  zap trash: "~/Library/Application Support/Whoosh"

  caveats <<~EOS
    Whoosh is ad-hoc signed, not Developer ID signed or Apple-notarized.
    Expect a first-launch warning. Only if you trust the official download and
    believe it was not tampered with, try opening Whoosh, then use System Settings
    > Privacy & Security > Open Anyway for Whoosh (if offered). Review the next
    prompt before choosing Open. This exception does not verify malware safety.
    Follow Apple's per-app instructions: https://support.apple.com/en-ie/102445
    Keep Gatekeeper enabled; do not remove quarantine attributes.
  EOS
end
