cask "politely" do
  name "Politely"
  desc "話すだけで、丁寧な文章に。"
  homepage "https://github.com/koki-develop/politely"
  version "0.3.0"

  arch arm: "arm64", intel: "x64"
  url "https://github.com/koki-develop/politely/releases/download/v#{version}/Politely-darwin-#{arch}-#{version}.zip"
  sha256 arm:   "f1873cd9bf3e213f16306933ddfddc44aaf8ad6c0a0b0f2479fccd3e3a4e471d",
         intel: "9610f5025033069b4b0304a152d0d7d38a2e4e5169bfedb515738779da86ce58"

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
