# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gat < Formula
  desc ""
  homepage ""
  version "0.14.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gat/releases/download/v0.14.0/gat_Darwin_x86_64.tar.gz"
      sha256 "5f4b1ba22c66d5fc94b6fc03a60d3251996374e19731bf7b3dfc6649113f7799"

      def install
        bin.install "gat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gat/releases/download/v0.14.0/gat_Darwin_arm64.tar.gz"
      sha256 "5c3a58f933333b870cf90c72e29f27155671ed9b9dbf1db13f7c523a6dacfbee"

      def install
        bin.install "gat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/gat/releases/download/v0.14.0/gat_Linux_arm64.tar.gz"
      sha256 "522e4dcbc5e2e4d0ca8f5697b4ac6d1b2f5c9a30b22c79402be489c4becda44e"

      def install
        bin.install "gat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gat/releases/download/v0.14.0/gat_Linux_x86_64.tar.gz"
      sha256 "931beb860394a4eb0e73b6e74f5fad53e97f42a11835cdb4be5771d40b61dd48"

      def install
        bin.install "gat"
      end
    end
  end
end
