cask "codecompass" do
  version "0.1.3"
  sha256 "90cfa4a6c67f8cff5cc23a8dbc89e78e0313621f834c8f6fa53e5c7d4d209c03"

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
