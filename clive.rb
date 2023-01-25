# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clive < Formula
  desc "Automates terminal operations and lets you view them live via a browser"
  homepage "https://github.com/koki-develop/clive"
  version "0.10.4"

  depends_on "ttyd"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.10.4/clive_Darwin_x86_64.tar.gz"
      sha256 "4c928398f2c560cdc741acb7356373b95abe4defc35a8cfa4193640a8b3b9648"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/clive/releases/download/v0.10.4/clive_Darwin_arm64.tar.gz"
      sha256 "95ec37d9867c4221e0d769e32df856a41d9f9598483f34ed7e450329c613c45f"

      def install
        bin.install "clive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/clive/releases/download/v0.10.4/clive_Linux_arm64.tar.gz"
      sha256 "340c6f7cc523c03e87f8345915ee33b90a5bcc384eb9a8c8e1bcf75b56744ccc"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.10.4/clive_Linux_x86_64.tar.gz"
      sha256 "60fcb2f5e89c7c09602329c11921d5832baf8f6e2927552a9d6556defcc2da40"

      def install
        bin.install "clive"
      end
    end
  end

  test do
    system "#{bin}/clive", "init"
    system "#{bin}/clive", "validate"
    assert_match "clive version v#{version}", shell_output("#{bin}/clive --version")
  end
end
