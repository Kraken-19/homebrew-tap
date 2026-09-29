cask "codecompass2" do
  version "2.0.3"
  sha256 "0bed8cab9adffd8b66fd88ac800791bfe804eaa5112b89b6ce40500b97bc05f2"

  url "https://omneon-storage.fsn1.your-objectstorage.com/releases/codecompass2/#{version}/CodeCompass2-#{version}.dmg"
  name "CodeCompass 2"
  desc "Your work, run with AI — inbox, projects, stages, deadlines and the sessions working on them"
  homepage "https://codecompass.omneon.ch"

  depends_on macos: :sequoia

  app "CodeCompass 2.app"

  zap trash: [
    "~/Library/Application Support/com.kraken.codecompass2",
    "~/Library/Caches/com.kraken.codecompass2",
    "~/Library/Preferences/com.kraken.codecompass2.plist",
    "~/Library/WebKit/com.kraken.codecompass2",
  ]
end
