# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gotrash < Formula
  desc ""
  homepage ""
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gotrash/releases/download/v0.6.0/gotrash_Darwin_arm64.tar.gz"
      sha256 "edb05ed1516fe8ac743b12eac63722349b59801be7d6a895568fbf1c53f28d2e"

      def install
        bin.install "gotrash"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gotrash/releases/download/v0.6.0/gotrash_Darwin_x86_64.tar.gz"
      sha256 "cf0f8ac3f2a5a6137c1ff00da9fb87e9cf993365cdbdb044eaa9be2ee875463d"

      def install
        bin.install "gotrash"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gotrash/releases/download/v0.6.0/gotrash_Linux_x86_64.tar.gz"
      sha256 "912065544c542d88a3c470fc1c3bfee35a24f0a87236b2dc2259ba4ee02f9f74"

      def install
        bin.install "gotrash"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/gotrash/releases/download/v0.6.0/gotrash_Linux_arm64.tar.gz"
      sha256 "993be51f48d6bc40350b85131b6ebad886f7b20b54f2f7770fab2b3d7076aa1f"

      def install
        bin.install "gotrash"
      end
    end
  end
end
