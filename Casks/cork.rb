# typed: strict
# frozen_string_literal: true

cask "cork" do
  version "0.1.0"
  sha256 "4b02a9aad5f29d89d93a02ab1caa0fd5cf8465c6017b434c9f3842446b7e2dfc"

  url "https://github.com/koki-develop/Cork/releases/download/v#{version}/Cork_#{version}_aarch64.dmg"
  name "Cork"
  desc "Kanban board for local Markdown files"
  homepage "https://github.com/koki-develop/Cork"

  depends_on arch: :arm64

  app "Cork.app"

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
