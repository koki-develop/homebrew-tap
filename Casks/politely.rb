cask "politely" do
  name "Politely"
  desc "話すだけで、丁寧な文章に。"
  homepage "https://github.com/koki-develop/politely"
  version "0.0.7"

  arch arm: "arm64", intel: "x64"
  url "https://github.com/koki-develop/politely/releases/download/v#{version}/Politely-darwin-#{arch}-#{version}.zip"
  sha256 arm:   "3e8d4f84014d526835e0f6b82fa8cecf709beec1e954bb4457e4dd0952ff1afa",
         intel: "5cd4fadc4032c8aab10faf74ee59fb37be869669bff9ec4d67c2aa03c6b3a2f9"

  preflight do
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{staged_path}/Politely.app"]
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/Politely.app"]
  end

  app "Politely.app"
end
