cask "nyaime" do
  version "0.0.1"
  url "https://github.com/koki-develop/NyaIME/releases/download/v#{version}/NyaIME.pkg"
  sha256 "28a27f96b21e58a2e5f14ad8b1ef501e8ca925e8c7703a365cbad130e02bd189"

  name "NyaIME"
  desc ""
  homepage "https://github.com/koki-develop/NyaIME"

  pkg "NyaIME.pkg"
  uninstall pkgutil: "me.koki.inputmethod.NyaIME"
end
