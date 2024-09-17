cask "koto" do
  version "0.0.4"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "362b0ef679ce12db38089d4d8bcaa52962e1f1a74a57b484e3ca4a7bca0cc801"

  name "Koto"
  desc "IME for Mac"
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
