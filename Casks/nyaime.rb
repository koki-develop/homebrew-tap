cask "nyaime" do
  version "0.1.0"
  url "https://github.com/koki-develop/NyaIME/releases/download/v#{version}/NyaIME.pkg"
  sha256 "f59613d7b332f1a501650bfadad4f18ba39416af1e228eb4ee7a8b3663636572"

  name "NyaIME"
  desc "猫の IME for Mac"
  homepage "https://github.com/koki-develop/NyaIME"

  pkg "NyaIME.pkg"
  uninstall pkgutil: "me.koki.inputmethod.NyaIME"
end
