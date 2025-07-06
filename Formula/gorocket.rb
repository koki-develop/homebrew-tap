# typed: strict
# frozen_string_literal: true

# Gorocket formula
class Gorocket < Formula
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/homebrew-tap/releases/download/v0.0.1/gorocket_v0.0.1_darwin_arm64.tar.gz"
      sha256 "6999fb40888617066ff7b8d9923a54d39e56709e654062d7a187ad6c47f16e58"
    else
      url "https://github.com/koki-develop/homebrew-tap/releases/download/v0.0.1/gorocket_v0.0.1_darwin_amd64.tar.gz"
      sha256 "a7f1f13fba207269adce0479048f31a75d82001946733f0e9440a6e7cee88d7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/homebrew-tap/releases/download/v0.0.1/gorocket_v0.0.1_linux_arm64.tar.gz"
      sha256 "b1391440a2628eef02a4e3f7d7e37674e645dedf4501b37e5e5651447718d45b"
    else
      url "https://github.com/koki-develop/homebrew-tap/releases/download/v0.0.1/gorocket_v0.0.1_linux_amd64.tar.gz"
      sha256 "71b268ddb5f72cebd233feb0f938531ee6bac7333d3ad3779e1264a7a2c882c3"
    end
  end

  def install
    bin.install "gorocket"
  end
end
