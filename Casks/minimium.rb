cask "minimium" do
  version "0.0.14"

  name "Minimium"
  desc "Minimium is a minimalistic browser."
  homepage "https://github.com/koki-develop/minimium"
  app "Minimium.app"

  url "https://github.com/koki-develop/minimium/releases/download/v#{version}/Minimium-#{version}.dmg"
  sha256 "ab55e6680f75de7a3683aec7a908b3684004d8cee0ec256781c536666e915f38"

  uninstall pkgutil: "me.koki.minimium"
end
