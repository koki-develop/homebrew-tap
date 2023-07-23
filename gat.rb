# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gat < Formula
  desc ""
  homepage ""
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gat/releases/download/v0.11.0/gat_Darwin_arm64.tar.gz"
      sha256 "581e1953f5462d84d86c8cbb5c60b6c7b810c3884cba010d08985b4db40483b9"

      def install
        bin.install "gat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gat/releases/download/v0.11.0/gat_Darwin_x86_64.tar.gz"
      sha256 "a57c030d8c27e6a1182bd307d7a4574f672197a600512cbb2c910c78bee13288"

      def install
        bin.install "gat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gat/releases/download/v0.11.0/gat_Linux_x86_64.tar.gz"
      sha256 "2798ce642f7afe4c6b60520e9f5d124ffb5bf1270f2d59b769d8f3a6f39d28ae"

      def install
        bin.install "gat"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/gat/releases/download/v0.11.0/gat_Linux_arm64.tar.gz"
      sha256 "6634c8b04028dc24ee10d4f554f0641fb8e480f99d6066949c14d5771e0ed303"

      def install
        bin.install "gat"
      end
    end
  end
end
