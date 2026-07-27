cask "koto" do
  version "0.6.0"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "5326270438916341fcffd7e66c51159d4ad378e2a0f73f7f21e385a1b502a627"
  depends_on macos: :ventura

  name "Koto"
  desc "IME for Mac."
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
