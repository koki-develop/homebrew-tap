cask "politely" do
  name "Politely"
  desc "話すだけで、丁寧な文章に。"
  homepage "https://github.com/koki-develop/politely"
  version "0.2.0"

  arch arm: "arm64", intel: "x64"
  url "https://github.com/koki-develop/politely/releases/download/v#{version}/Politely-darwin-#{arch}-#{version}.zip"
  sha256 arm:   "fafd02939d0e4f1322d9325b4e0dc428274dcbe73119d677b6ca1eec2ce8b184",
         intel: "7b03b97df0ba1336243a8ab621ef16ba8d5e017a2010efce5ad12645615196ac"

  preflight do
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{staged_path}/Politely.app"]
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/Politely.app"]
  end

  app "Politely.app"
end
