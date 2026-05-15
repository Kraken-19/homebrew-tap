cask "artefact" do
  version "1.0.1"
  sha256 "fc4888656832e313d17879dc4bc578a40f0f526d6b8cd0ca6869fa97379da043"

  url "https://omneon-storage.fsn1.your-objectstorage.com/releases/artefact/#{version}/Artefact-#{version}.dmg"
  name "Artefact"
  desc "Universal file viewer, editor, creator & converter for macOS"
  homepage "https://artefact.omneon.ch"

  depends_on macos: ">= :sequoia"

  app "Artefact.app"

  zap trash: [
    "~/Library/Application Support/ch.omneon.artefact",
    "~/Library/Caches/ch.omneon.artefact",
    "~/Library/Preferences/ch.omneon.artefact.plist",
  ]
end
