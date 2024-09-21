cask "koto" do
  version "0.3.0"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "7af30b366a3e57b14d1bbc2ad1fb6674ba282065ea13da5e26df20c2307092ab"
  depends_on macos: ">= :ventura"

  name "Koto"
  desc "IME for Mac."
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
