# typed: strict
# frozen_string_literal: true

cask "cork" do
  version "0.16.1"
  sha256 "a7c35002408ba74b967fd2a4176f5b8630cbf1abb6fb3c08eee4cacc4c256bc3"

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
