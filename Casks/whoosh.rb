cask "whoosh" do
  version "0.2.1"
  sha256 "0ba859b5dfd223a54b0785cf8af7ef8c7b7e5c34c486085822d5ca8b8a83fcf4"

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
