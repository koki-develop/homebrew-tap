cask "koto" do
  version "0.4.1"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "1be8332f288e62db22b8d931ef595fc00aecf0ab6f65779ddc82866b2740d1f1"
  depends_on macos: ">= :ventura"

  name "Koto"
  desc "IME for Mac."
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
