# typed: strict
# frozen_string_literal: true

cask "cork" do
  version "0.4.0"
  sha256 "0b1d1a906cad6e2a64001e0f63fc0d151d382913b6297ca2e420820313b003a5"

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
