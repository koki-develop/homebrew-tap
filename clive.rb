# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clive < Formula
  desc "Automates terminal operations and lets you view them live via a browser"
  homepage "https://github.com/koki-develop/clive"
  version "0.12.2"

  depends_on "ttyd"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.2/clive_Darwin_x86_64.tar.gz"
      sha256 "fc519bf6ed52cd57191d18027cd58800435ad96048077788fa33fb97a2817626"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.2/clive_Darwin_arm64.tar.gz"
      sha256 "4718d5bb7df03bd29b49540f306c2bf06cb3eb9346076229ce021e47231a98c3"

      def install
        bin.install "clive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.2/clive_Linux_x86_64.tar.gz"
      sha256 "d1b0e5b185e1ed6f66479a1053f28a65f978c45d650f93017a2bcc9aa86aeda9"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.2/clive_Linux_arm64.tar.gz"
      sha256 "e512d43d1284893610639ab6d482cb6382e3525ffc948ec6a0f6335dd7638ffa"

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
