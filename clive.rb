# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clive < Formula
  desc "Automates terminal operations and lets you view them live via a browser"
  homepage "https://github.com/koki-develop/clive"
  version "0.12.0"

  depends_on "ttyd"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.0/clive_Darwin_x86_64.tar.gz"
      sha256 "5214d3d3b7b25a3ea1af923cc01e6914b17598437b83c9794eb84be213312c15"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.0/clive_Darwin_arm64.tar.gz"
      sha256 "17716a83a237612504d2e0bac187cd7d43d4984f4507d7a91a1002cefb16071b"

      def install
        bin.install "clive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.0/clive_Linux_arm64.tar.gz"
      sha256 "ed1d7dab8c053955591b5cf965f17f9fc525a3b621c0ce71cdc108192f183a0b"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.0/clive_Linux_x86_64.tar.gz"
      sha256 "f2907560201efa67787b2e34f65364fcb3bf59e82c736bb725bea1b2f060801c"

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
