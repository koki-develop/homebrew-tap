# typed: strict
# frozen_string_literal: true

cask "cork" do
  version "0.10.0"
  sha256 "7470569fd81c03d748ec3a3459be9e8b35b87738908b90cc3b5ceaaf13063e48"

  url "https://github.com/koki-develop/Cork/releases/download/v#{version}/Cork_#{version}_aarch64.dmg"
  name "Cork"
  desc "Kanban board for local Markdown files"
  homepage "https://github.com/koki-develop/Cork"

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
