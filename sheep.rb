# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sheep < Formula
  desc ""
  homepage ""
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/sheep/releases/download/v0.4.0/sheep_Darwin_arm64.tar.gz"
      sha256 "4f9f88f7f5176ab7092bd69c2cddf199690d96605bc810ca041641085f7051da"

      def install
        bin.install "sheep"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/sheep/releases/download/v0.4.0/sheep_Darwin_x86_64.tar.gz"
      sha256 "0325a6b42dc0afa2b8411450b2b663056ba8a064ede671d8414125b065b0fc7f"

      def install
        bin.install "sheep"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/sheep/releases/download/v0.4.0/sheep_Linux_x86_64.tar.gz"
      sha256 "15f5e08ba93f291b194a23ca7e62b7b0306316038b8bcf51084ec6397e7ff376"

      def install
        bin.install "sheep"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/sheep/releases/download/v0.4.0/sheep_Linux_arm64.tar.gz"
      sha256 "338755b9266d57594c4fe7dc0a13256d7854ca7a7f9187f5aaacd04b49d0819e"

      def install
        bin.install "sheep"
      end
    end
  end
end
