# typed: strict
# frozen_string_literal: true

# Gorocket formula
class Gorocket < Formula
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gorocket/releases/download/v0.0.2/gorocket_v0.0.2_darwin_arm64.tar.gz"
      sha256 "64a822e2f37084475c8ae9395dc3be7da3d53a1b35ed93885277ecd41105376a"
    else
      url "https://github.com/koki-develop/gorocket/releases/download/v0.0.2/gorocket_v0.0.2_darwin_amd64.tar.gz"
      sha256 "d14ed03f9472ead3bf880bbf0017964c9daade7cc4f650a54036fe4acb11894e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gorocket/releases/download/v0.0.2/gorocket_v0.0.2_linux_arm64.tar.gz"
      sha256 "82d17714db625c278198e75e08e91648a6c6d1cfee3d9b446d82753ac0013a2f"
    else
      url "https://github.com/koki-develop/gorocket/releases/download/v0.0.2/gorocket_v0.0.2_linux_amd64.tar.gz"
      sha256 "85870860815982a901e66277c1a2506c4432a105642ac9cf7403d5b56a7981e3"
    end
  end

  def install
    bin.install "gorocket"
  end
end
