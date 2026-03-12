cask "artefact" do
  version "0.1.0"
  sha256 "71150d742a256601f6ad1b89047d7739fe8514e23c53e6023987f9a7c6785e0b"

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
