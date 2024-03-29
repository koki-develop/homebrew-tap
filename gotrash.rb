# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotrash < Formula
  desc ""
  homepage ""
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gotrash/releases/download/v0.9.0/gotrash_Darwin_arm64.tar.gz"
      sha256 "6429c11f0c7ee85fcbdfa1b2645557630d6bd61ea026012ed6237f6038e62aae"

      def install
        bin.install "gotrash"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gotrash/releases/download/v0.9.0/gotrash_Darwin_x86_64.tar.gz"
      sha256 "d249fe402bfcbf717a517a3adcab40955744dce5abde4c0bf2f9e85e1d07bb55"

      def install
        bin.install "gotrash"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gotrash/releases/download/v0.9.0/gotrash_Linux_x86_64.tar.gz"
      sha256 "ab02bdc369e1fd1cbee41a8d0abca7b4b183fd397ce5969b83310eb1f894c2d6"

      def install
        bin.install "gotrash"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/gotrash/releases/download/v0.9.0/gotrash_Linux_arm64.tar.gz"
      sha256 "46f9fd535d122368dc486f89bdc19d63cf85121003bf22129374db0947a29ffb"

      def install
        bin.install "gotrash"
      end
    end
  end
end
