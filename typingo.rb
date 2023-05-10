# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Typingo < Formula
  desc ""
  homepage ""
  version "0.3.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/typingo/releases/download/v0.3.3/typingo_Darwin_x86_64.tar.gz"
      sha256 "5336f7fedb44ffc7818cdc15efd0cc1c5b58eeae2d2cd3f0e19bba8c62ebd21a"

      def install
        bin.install "typingo"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/typingo/releases/download/v0.3.3/typingo_Darwin_arm64.tar.gz"
      sha256 "f85ad9701d8324e245b670c59afd448f6f746d95ce70b54a35551bf58f05bd22"

      def install
        bin.install "typingo"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/typingo/releases/download/v0.3.3/typingo_Linux_arm64.tar.gz"
      sha256 "2a676931c2bd9625432d68cc215efdef9b3903e690a615658ed43f34281b0a26"

      def install
        bin.install "typingo"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/typingo/releases/download/v0.3.3/typingo_Linux_x86_64.tar.gz"
      sha256 "16eff50d257027227f9a92baba97c52c3bc16c7d263c9be41561ad6c3a5b193a"

      def install
        bin.install "typingo"
      end
    end
  end
end
