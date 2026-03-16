cask "politely" do
  name "Politely"
  desc "話すだけで、丁寧な文章に。"
  homepage "https://github.com/koki-develop/politely"
  version "0.3.1"

  arch arm: "arm64", intel: "x64"
  url "https://github.com/koki-develop/politely/releases/download/v#{version}/Politely-darwin-#{arch}-#{version}.zip"
  sha256 arm:   "35b40d930443b7496e95fdc93bbca5d2bed6b1ac3fa19b020917639586969ee5",
         intel: "9d021a6977f6aa1463c01a9689ff875f454f401c5c50d5df9d0430102024c62b"

  preflight do
    # ad-hoc 署名で designated requirement を identifier のみに設定
    # これにより、ビルドが変わっても TCC が同じアプリとして認識する
    system_command "/usr/bin/codesign",
                   args: [
                     "--force",
                     "--deep",
                     "--sign", "-",
                     "--identifier", "me.koki.politely",
                     "-r=designated => identifier \"me.koki.politely\"",
                     "#{staged_path}/Politely.app",
                   ]
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/Politely.app"]
  end

  app "Politely.app"
end
