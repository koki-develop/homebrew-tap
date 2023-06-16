# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clive < Formula
  desc "Automates terminal operations and lets you view them live via a browser"
  homepage "https://github.com/koki-develop/clive"
  version "0.12.6"

  depends_on "ttyd"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.6/clive_Darwin_x86_64.tar.gz"
      sha256 "dfc40dc35a80507b7c2a2a1394e60bd87b20681c6f3b99300e23413694421f21"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.6/clive_Darwin_arm64.tar.gz"
      sha256 "08978449157877ecc96773c161e01465d80f71fb2946c4e656073d57431b0bd2"

      def install
        bin.install "clive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.6/clive_Linux_arm64.tar.gz"
      sha256 "b4984373520ba34fc479d0da865b3e25f31c42075e8e310da3cbb6206b3ca85c"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.6/clive_Linux_x86_64.tar.gz"
      sha256 "cab2726f7da75b5a2c2f9f34d9f20a1e6f948323d1a22195cfa9b368e4dd07e6"

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
