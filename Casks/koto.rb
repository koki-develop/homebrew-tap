cask "koto" do
  version "0.2.1"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "2e864e05e14047121b8de1ae91ff75d36580c424c606b3316cd6441f9157b97b"
  depends_on macos: ">= :ventura"

  name "Koto"
  desc "IME for Mac."
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
