cask "koto" do
  version "0.0.7"
  url "https://github.com/koki-develop/Koto/releases/download/v#{version}/Koto.pkg"
  sha256 "996f83d0e81fb26edbfe7290921fde5dade0d476f4782ec72e55b5c93c567892"
  depends_on macos: ">= :ventura"

  name "Koto"
  desc "IME for Mac"
  homepage "https://github.com/koki-develop/Koto"

  pkg "Koto.pkg"
  uninstall pkgutil: "me.koki.inputmethod.Koto"
end
