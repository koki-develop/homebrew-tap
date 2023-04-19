# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sheep < Formula
  desc ""
  homepage ""
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/sheep/releases/download/v0.3.0/sheep_Darwin_arm64.tar.gz"
      sha256 "e4c0cf6cb97f6477719fd943beaf1e365e85db19982253db582f778d7508cc49"

      def install
        bin.install "sheep"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/sheep/releases/download/v0.3.0/sheep_Darwin_x86_64.tar.gz"
      sha256 "9a168d5dae75fb2b1e5e0aef5d058518f764d43c6be2fc97ed86fe5ede65f597"

      def install
        bin.install "sheep"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/sheep/releases/download/v0.3.0/sheep_Linux_x86_64.tar.gz"
      sha256 "95589c44775c3f95e831d7692f3ac04ebaf406dd2e622f83538394ad716f50db"

      def install
        bin.install "sheep"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/sheep/releases/download/v0.3.0/sheep_Linux_arm64.tar.gz"
      sha256 "d0c778eaf368340f13ef62fdf009ff81db21be67ba9d4732d37e59dc6653721f"

      def install
        bin.install "sheep"
      end
    end
  end
end
