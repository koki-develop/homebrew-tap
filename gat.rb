# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gat < Formula
  desc ""
  homepage ""
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gat/releases/download/v0.2.0/gat_Darwin_x86_64.tar.gz"
      sha256 "d0d8b9c0d80db8da03744ffa52629c893d743f7343d460b93eec409ea6b6f3c3"

      def install
        bin.install "gat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gat/releases/download/v0.2.0/gat_Darwin_arm64.tar.gz"
      sha256 "45194088cb4d7dafeab334ae16412b60c5b59464cac85ce34cc6b1dcfa96fa2b"

      def install
        bin.install "gat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gat/releases/download/v0.2.0/gat_Linux_x86_64.tar.gz"
      sha256 "2e378151bed7026d7e660d3e7677acd75ee0eb38969263d7b3553e4fa8d9395c"

      def install
        bin.install "gat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/gat/releases/download/v0.2.0/gat_Linux_arm64.tar.gz"
      sha256 "2640e2aeec724032beed8db674e4a1b1ab4e77ed029e9069284926e33aa8b21b"

      def install
        bin.install "gat"
      end
    end
  end
end
