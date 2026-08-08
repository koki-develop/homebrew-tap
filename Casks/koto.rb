cask "koto" do
  version "0.7.1"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "c5ec2ed440d0f20bda9a3ccdda5b3e63dbcaa63412ce52ceb60b780ba4be7b37"
  depends_on macos: :ventura

  name "Koto"
  desc "IME for Mac."
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
