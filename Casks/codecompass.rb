cask "codecompass" do
  version "0.1.4"
  sha256 "bfa6089371dc58a20b07b94a022083e24d86af4185e01e0d8a136028ba411143"

  url "https://omneon-storage.fsn1.your-objectstorage.com/releases/codecompass/#{version}/CodeCompass-#{version}.dmg"
  name "CodeCompass"
  desc "Dev Cockpit — Terminal, Roadmap, Knowledge Base & AI Assistant"
  homepage "https://codecompass.omneon.ch"

  depends_on macos: ">= :sequoia"

  app "CodeCompass.app"

  zap trash: [
    "~/.codecompass",
    "~/Library/Application Support/ch.omneon.codecompass",
    "~/Library/Caches/ch.omneon.codecompass",
    "~/Library/Preferences/ch.omneon.codecompass.plist",
  ]
end
