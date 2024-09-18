cask "koto" do
  version "0.0.8"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "164832cb81d4008896b038233d906979670940535db5387be5f56d17b68655dd"
  depends_on macos: ">= :ventura"

  name "Koto"
  desc "IME for Mac"
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
