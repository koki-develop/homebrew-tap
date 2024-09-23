cask "koto" do
  version "0.4.0"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "ec0f7ae9b79d85fe11c70a5ca6c588a21895b4749faa3e235634cc2be93b0761"
  depends_on macos: ">= :ventura"

  name "Koto"
  desc "IME for Mac."
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
