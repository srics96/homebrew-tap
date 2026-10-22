cask "whoosh" do
  version "0.1.0"
  sha256 "eacdde86ae95fb6ed2ac4754303034f5938b38e9fe02a2e786575501b6561d70"

  url "https://github.com/srics96/blink/releases/download/v#{version}/Whoosh.dmg"
  name "Whoosh"
  desc "Switch AI coding agents without losing context"
  homepage "https://github.com/srics96/blink"

  depends_on macos: ">= :ventura"

  app "Whoosh.app"

  zap trash: [
    "~/Library/Application Support/Whoosh",
  ]
end
