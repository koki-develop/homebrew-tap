# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gofzf < Formula
  desc ""
  homepage ""
  version "0.8.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.8.0/gofzf_Darwin_x86_64.tar.gz"
      sha256 "ff61044a3b013ee5713b98e625b925a067b452e77e5d6abf1ed4af8c091941bf"

      def install
        bin.install "gofzf"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.8.0/gofzf_Darwin_arm64.tar.gz"
      sha256 "f53cffcb8a9df869a50553cff6d373f6a14cc09574d52cb9ae4bbfd101d47edc"

      def install
        bin.install "gofzf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.8.0/gofzf_Linux_x86_64.tar.gz"
      sha256 "6bffcfae7141edb1d5a69aae9b1229889b4d10275230eb645809634d6fc5c9f9"

      def install
        bin.install "gofzf"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.8.0/gofzf_Linux_arm64.tar.gz"
      sha256 "fb4955a45333f0585f19056fc61fedc1202e391454ebbdcb2425ba97ee327041"

      def install
        bin.install "gofzf"
      end
    end
  end
end
