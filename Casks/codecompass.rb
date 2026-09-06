cask "codecompass" do
  version "0.2.0"
  sha256 "442132df5cd783d243663380f0e3a77834d7f6a0222b371114d4745f937ddd96"

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
