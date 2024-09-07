cask "nyaime" do
  version "0.0.2"
  url "https://github.com/koki-develop/NyaIME/releases/download/v#{version}/NyaIME.pkg"
  sha256 "6c6a0bcd470503069f14a53bf2d64660fd04ad069761eafc925e293fc3c6549a"

  name "NyaIME"
  desc ""
  homepage "https://github.com/koki-develop/NyaIME"

  pkg "NyaIME.pkg"
  uninstall pkgutil: "me.koki.inputmethod.NyaIME"
end
