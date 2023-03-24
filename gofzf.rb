# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gofzf < Formula
  desc ""
  homepage ""
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.2.1/gofzf_Darwin_x86_64.tar.gz"
      sha256 "9f62c695678b632625eb4a0a6cb9f7d9733a2f7697e7916745fc8cc3a586f9fe"

      def install
        bin.install "gofzf"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.2.1/gofzf_Darwin_arm64.tar.gz"
      sha256 "60410d1eb24171312fe527ddd7ad57f430a08f8ec6f908daf6ed24d48d6aadfb"

      def install
        bin.install "gofzf"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.2.1/gofzf_Linux_x86_64.tar.gz"
      sha256 "4bf3850c35457334f7c6f5e86bd52f6fc3f9cc4504e6a94c9a643c78f4b20c9c"

      def install
        bin.install "gofzf"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/go-fzf/releases/download/v0.2.1/gofzf_Linux_arm64.tar.gz"
      sha256 "716b851a7fa8ddde65f45e06df148112af18cc36d45d83a4799d7276b395e606"

      def install
        bin.install "gofzf"
      end
    end
  end
end
