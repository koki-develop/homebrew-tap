cask "koto" do
  version "0.0.5"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "85309f3eda95cf0bf5bf377d27b5af50c08243814ac8289f24f9baba7e079a85"
  depends_on macos: ">= :sonoma"

  name "Koto"
  desc "IME for Mac"
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
