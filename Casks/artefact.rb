cask "artefact" do
  version "0.2.1"
  sha256 "d813ea8eabd2a5a8e9289cc94f28dc0fb2ee5f0e0808a6b946d89368cff2e694"

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
