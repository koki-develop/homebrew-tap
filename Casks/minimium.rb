cask "minimium" do
  version "0.1.0"

  name "Minimium"
  desc "Minimium is a minimalistic browser."
  homepage "https://github.com/koki-develop/minimium"
  app "Minimium.app"

  url "https://github.com/koki-develop/minimium/releases/download/v#{version}/Minimium-#{version}.dmg"
  sha256 "c92a78519c5ebef018c569ada540b79b0fc238ee501e2e110343ac2b8d40c1d0"

  uninstall pkgutil: "me.koki.minimium"
end
