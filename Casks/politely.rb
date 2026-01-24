cask "politely" do
  name "Politely"
  desc "話すだけで、丁寧な文章に。"
  homepage "https://github.com/koki-develop/politely"
  version "0.1.0"

  arch arm: "arm64", intel: "x64"
  url "https://github.com/koki-develop/politely/releases/download/v#{version}/Politely-darwin-#{arch}-#{version}.zip"
  sha256 arm:   "8b5242d43dfc00276f1f12ceec91ff72bd460ea310297fd2add862b6d2231149",
         intel: "23a272a961f9516ddc262c46b82e6c5d8f878c7f2a0c254d45406d5cbb287bc6"

  preflight do
    system_command "/usr/bin/codesign",
                   args: ["--force", "--deep", "--sign", "-", "#{staged_path}/Politely.app"]
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/Politely.app"]
  end

  app "Politely.app"
end
