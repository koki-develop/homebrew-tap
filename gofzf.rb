# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gofzf < Formula
  desc ""
  homepage ""
  version "0.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.10.0/gofzf_Darwin_x86_64.tar.gz"
      sha256 "18860ac8a4ac414dca0465e057f26066e128e0afbaaedd679867b6c25e6deab8"

      def install
        bin.install "gofzf"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.10.0/gofzf_Darwin_arm64.tar.gz"
      sha256 "8d1a1e124451f5cd760f8d5520d36540edd8f6c29049687f0e99dbcccd4b9757"

      def install
        bin.install "gofzf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.10.0/gofzf_Linux_arm64.tar.gz"
      sha256 "6500b1c409c9e3bedfcf7d5dea815d6da669b2959986b207bba6c976f4273c95"

      def install
        bin.install "gofzf"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.10.0/gofzf_Linux_x86_64.tar.gz"
      sha256 "cf3aea6675fae6b3f8501ffed73f1abb55af93486ee9a50186c20293223c63af"

      def install
        bin.install "gofzf"
      end
    end
  end
end
