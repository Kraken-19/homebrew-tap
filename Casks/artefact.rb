cask "artefact" do
  version "0.1.2"
  sha256 "462a1c80440cf54f28814f638288fb238e358b14e97bc4be492e484bed4691ec"

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
