# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Askai < Formula
  desc ""
  homepage ""
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/askai/releases/download/v0.4.0/askai_Darwin_arm64.tar.gz"
      sha256 "86fe323d23bc80d97bc55dc9ea0ef4ea46c0a671e03fdf30536a6fda7675141b"

      def install
        bin.install "askai"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/askai/releases/download/v0.4.0/askai_Darwin_x86_64.tar.gz"
      sha256 "f98abfc6507f700d745179a53e9dbc0df23c8c29002dfe3d0f6be77466935577"

      def install
        bin.install "askai"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/askai/releases/download/v0.4.0/askai_Linux_x86_64.tar.gz"
      sha256 "ba20e9529ec256fc90620420fdaf5de30eabe1f91eaff94e1b074147ce031cd2"

      def install
        bin.install "askai"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/askai/releases/download/v0.4.0/askai_Linux_arm64.tar.gz"
      sha256 "29850d25bc492e17d7f10f7561cf55982cf51399332cc49a30808d5aa6c8dd14"

      def install
        bin.install "askai"
      end
    end
  end
end
