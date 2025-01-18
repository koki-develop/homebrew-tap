cask "minimium" do
  version "0.0.13"

  name "Minimium"
  desc "Minimium is a browser that is minimalistic."
  homepage "https://github.com/koki-develop/minimium"
  app "Minimium.app"

  url "https://github.com/koki-develop/minimium/releases/download/v#{version}/Minimium-#{version}.dmg"
  sha256 "8aada6fb0fd7b3ea207d29052ecac486ed041496aaccf33643ec54a15b957fbf"

  uninstall pkgutil: "me.koki.minimium"
end
