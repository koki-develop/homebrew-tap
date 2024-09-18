cask "koto" do
  version "0.0.6"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "6c7af1e2d3062b2de69f0067c23da539c1ae6091848c289668c7724f4427408d"
  depends_on macos: ">= :ventura"

  name "Koto"
  desc "IME for Mac"
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
