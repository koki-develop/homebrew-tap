cask "koto" do
  version "0.7.0"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "c26ee9802c0f6f18a2fad2676ab7cfffa98b39cb6790dab8ff0ff4d87aa31945"
  depends_on macos: :ventura

  name "Koto"
  desc "IME for Mac."
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
