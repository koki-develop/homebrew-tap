cask "minimium" do
  version "0.0.6"

  name "Minimium"
  desc "Minimium is a browser that is minimalistic."
  homepage "https://github.com/koki-develop/minimium"
  app "Minimium.app"

  url "https://github.com/koki-develop/minimium/releases/download/v#{version}/Minimium-#{version}-universal.dmg"
  sha256 """"

  uninstall pkgutil: "me.koki.minimium"
end
