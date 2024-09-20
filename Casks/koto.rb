cask "koto" do
  version "0.2.5"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "c483c6606c7b79d9ca714370c9f9b5b78102a4f80796ae2cf07de0e6eb9b4eb4"
  depends_on macos: ">= :ventura"

  name "Koto"
  desc "IME for Mac."
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
