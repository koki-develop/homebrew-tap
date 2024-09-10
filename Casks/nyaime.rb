cask "nyaime" do
  version "0.0.6"
  url "https://github.com/koki-develop/NyaIME/releases/download/v#{version}/NyaIME.pkg"
  sha256 "963a78c68bbfb6bfef5dcae272ba713c302c8c0028129be70e089bc0401eac9a"

  name "NyaIME"
  desc "猫の IME for Mac"
  homepage "https://github.com/koki-develop/NyaIME"

  pkg "NyaIME.pkg"
  uninstall pkgutil: "me.koki.inputmethod.NyaIME"
end
