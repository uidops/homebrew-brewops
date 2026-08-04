cask "ganjoor" do
  version "1.0.3"
  sha256 "901448df1fc30c6167a49a7dbde542a63559bb336429ba4e3c490dfeba4714b9"

  url "https://github.com/uidops/ganjoor/releases/download/#{version}/Ganjoor-#{version}-macOS-Tahoe.dmg"
  name "Ganjoor"
  desc "macOS Tahoe widget for a fresh verse from Ganjoor"
  homepage "https://github.com/uidops/ganjoor"

  depends_on macos: :tahoe

  app "Ganjoor.app"
end
