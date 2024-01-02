# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clive < Formula
  desc "Automates terminal operations and lets you view them live via a browser"
  homepage "https://github.com/koki-develop/clive"
  version "0.12.9"

  depends_on "ttyd"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.9/clive_Darwin_x86_64.tar.gz"
      sha256 "a4cefe030329076f5a32110704afec96d7f6cdf83dd6591a439340ec13e7360e"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.9/clive_Darwin_arm64.tar.gz"
      sha256 "aad7f845eaca5da4e6e776fbaff0b0c4bb17f6d4753e739c39cf8244e5320385"

      def install
        bin.install "clive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.9/clive_Linux_x86_64.tar.gz"
      sha256 "2d1cec3b11127f7874695840e1a1468d9f9519e57c6c57ca82e202e361355d20"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.9/clive_Linux_arm64.tar.gz"
      sha256 "9c8bccfb2d9e7d12f56d4f3b25c7ff4c6509f8d6dcd54e6f615449113d7a87f8"

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
