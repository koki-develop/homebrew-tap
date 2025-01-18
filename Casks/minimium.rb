cask "minimium" do
  version "0.0.12"

  name "Minimium"
  desc "Minimium is a browser that is minimalistic."
  homepage "https://github.com/koki-develop/minimium"
  app "Minimium.app"

  url "https://github.com/koki-develop/minimium/releases/download/v#{version}/Minimium-#{version}.dmg"
  sha256 ""9df7329a90c0dca5f2f2fc7f8dc60484394e592e69e1b662550c701153dfc7a5""

  uninstall pkgutil: "me.koki.minimium"
end
