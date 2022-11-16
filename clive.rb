# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clive < Formula
  desc "Automates terminal operations and lets you view them live via a browser."
  homepage "https://github.com/koki-develop/clive"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.4.1/clive_0.4.1_Darwin_x86_64.tar.gz"
      sha256 "d57e37070d8e46fe72bacb5dc49ac8848c6bdd98cbbd42648bdca0f950e2c06f"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/clive/releases/download/v0.4.1/clive_0.4.1_Darwin_arm64.tar.gz"
      sha256 "5eda7194abf5984e95c0bb3f3361095c3499349a2dc2d4f1ac1cba1578e66737"

      def install
        bin.install "clive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.4.1/clive_0.4.1_Linux_x86_64.tar.gz"
      sha256 "3e68611a8f5aff2ecb5136d30b3d453b0e7738153a57a148be872b3b309f5842"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/clive/releases/download/v0.4.1/clive_0.4.1_Linux_arm64.tar.gz"
      sha256 "45f9b451c6cea8ff63c875175082749f25176016ba1d0c29c98c8b87a8156c80"

      def install
        bin.install "clive"
      end
    end
  end
end
