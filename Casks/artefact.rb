cask "artefact" do
  version "0.1.1"
  sha256 "e7af9b614cea5062f24b8852b4d42521ade546e04d792b3f5da28f4b00ee3b08"

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
