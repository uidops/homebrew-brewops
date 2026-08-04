cask "ganjoor" do
  version "1.0.4"
  sha256 "5ccfc4341c5b14477bc465a512a27a42a3f15497ff39fc4c1a37a8b50162d629"

  url "https://github.com/uidops/ganjoor/releases/download/#{version}/Ganjoor-#{version}-macOS-Tahoe.dmg"
  name "Ganjoor"
  desc "macOS Tahoe widget for a fresh verse from Ganjoor"
  homepage "https://github.com/uidops/ganjoor"

  depends_on macos: :tahoe

  app "Ganjoor.app"
end
