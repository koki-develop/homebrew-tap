cask "koto" do
  version "0.7.2"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "56fdd6199a1a08bb1cbcc4b43798c15d03b40cc3686c2358c00238f8c12c67f9"
  depends_on macos: :ventura

  name "Koto"
  desc "IME for Mac."
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
