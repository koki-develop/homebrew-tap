# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelloCli < Formula
  desc ""
  homepage ""
  version "0.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/hello-cli/releases/download/v0.4.0/hello-cli_Darwin_x86_64.tar.gz"
      sha256 "4bc484c1e6593bf995e161342e0a60a545c1c2f48a1339a382fcc76c45418f1c"

      def install
        bin.install "hello-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/hello-cli/releases/download/v0.4.0/hello-cli_Darwin_arm64.tar.gz"
      sha256 "0a8e99b6f4d0e10a4117f3a2cda43aba18d46e2b2c01350370623212a650c1cb"

      def install
        bin.install "hello-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/hello-cli/releases/download/v0.4.0/hello-cli_Linux_arm64.tar.gz"
      sha256 "889a6593accb9edc3bbb2bb319658140670f83baed94a71c811f212c630a4f2e"

      def install
        bin.install "hello-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/hello-cli/releases/download/v0.4.0/hello-cli_Linux_x86_64.tar.gz"
      sha256 "b6a39d83dca76ac39edde32e9ad9da4603654c0ae1c01699cdaad83ad1be1860"

      def install
        bin.install "hello-cli"
      end
    end
  end
end
