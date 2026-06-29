# typed: strict
# frozen_string_literal: true

cask "cork" do
  version "0.17.2"
  sha256 "5b0ee46cd07dd95ccbea55da05395d9f4c175f5ca2299231bdddab7ff0bf4627"

  url "https://github.com/koki-develop/Cork/releases/download/v#{version}/Cork_#{version}_aarch64.dmg"
  name "Cork"
  desc "Kanban board for local Markdown files"
  homepage "https://github.com/koki-develop/Cork"

  auto_updates true

  depends_on arch: :arm64

  app "Cork.app"

  # `cork` CLI を PATH に公開する。Cork.app に同梱した sidecar バイナリ
  # (Contents/MacOS/cork-cli) を `cork` という名前でシンボリックリンクする。
  binary "#{appdir}/Cork.app/Contents/MacOS/cork-cli", target: "cork"

  preflight do
    # ad-hoc 署名で designated requirement を identifier のみに設定
    # これにより、ビルドが変わっても TCC が同じアプリとして認識する
    system_command "/usr/bin/codesign",
                   args: [
                     "--force",
                     "--deep",
                     "--sign", "-",
                     "--identifier", "me.koki.cork",
                     "-r=designated => identifier \"me.koki.cork\"",
                     "#{staged_path}/Cork.app"
                   ]
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/Cork.app"]
  end
end
