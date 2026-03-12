cask "codecompass" do
  version "0.1.2"
  sha256 "61fcad8d06a612f1685a4d4c4a3c0adcd0580fe69ccc59cd43679d7ae20791a6"

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
