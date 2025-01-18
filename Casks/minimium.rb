cask "minimium" do
  version "0.0.7"

  name "Minimium"
  desc "Minimium is a browser that is minimalistic."
  homepage "https://github.com/koki-develop/minimium"
  app "Minimium.app"

  url "https://github.com/koki-develop/minimium/releases/download/v#{version}/Minimium-#{version}.dmg"
  sha256 ""9115237ad29747b19ecfe5162d68ee0e3bc4eeb10abf66b04ff5cfa3876fec3d""

  uninstall pkgutil: "me.koki.minimium"
end
