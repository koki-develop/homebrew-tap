cask "minimium" do
  version "0.0.11"

  name "Minimium"
  desc "Minimium is a browser that is minimalistic."
  homepage "https://github.com/koki-develop/minimium"
  app "Minimium.app"

  url "https://github.com/koki-develop/minimium/releases/download/v#{version}/Minimium-#{version}.dmg"
  sha256 ""ba877f1ee3441d351df9bf138726a530d7ab349b97e6368598e1e70534541eec""

  uninstall pkgutil: "me.koki.minimium"
end
