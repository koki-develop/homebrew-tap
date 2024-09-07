cask "nyaime" do
  version "0.0.3"
  url "https://github.com/koki-develop/NyaIME/releases/download/v#{version}/NyaIME.pkg"
  sha256 "a1f522d0f8d9985fa988e32c3fa4e84281295f402124201e2ee06df56cca8cfb"

  name "NyaIME"
  desc ""
  homepage "https://github.com/koki-develop/NyaIME"

  pkg "NyaIME.pkg"
  uninstall pkgutil: "me.koki.inputmethod.NyaIME"
end
