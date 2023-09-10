# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gat < Formula
  desc ""
  homepage ""
  version "0.13.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gat/releases/download/v0.13.0/gat_Darwin_x86_64.tar.gz"
      sha256 "acae803ab65fc5149647a8c001d90e59d15764971e030a3ded62ddc0aec58b7a"

      def install
        bin.install "gat"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gat/releases/download/v0.13.0/gat_Darwin_arm64.tar.gz"
      sha256 "b34026e3657cb257727e5f67a8b179222360eec044cdf7d9a54b56c399ad8020"

      def install
        bin.install "gat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/gat/releases/download/v0.13.0/gat_Linux_arm64.tar.gz"
      sha256 "3aa007dd4e285b2e417007f67c891ac23fc99b8aa32b3806383f80e3bc352b92"

      def install
        bin.install "gat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/gat/releases/download/v0.13.0/gat_Linux_x86_64.tar.gz"
      sha256 "566ef313517b3d9d516ebb27107e5c394a1029d1ace42559c5de17413ece4e53"

      def install
        bin.install "gat"
      end
    end
  end
end
