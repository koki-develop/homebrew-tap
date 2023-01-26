# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clive < Formula
  desc "Automates terminal operations and lets you view them live via a browser"
  homepage "https://github.com/koki-develop/clive"
  version "0.10.5"

  depends_on "ttyd"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.10.5/clive_Darwin_x86_64.tar.gz"
      sha256 "51a209a5b6e15d0188ccb835256576ff18cca501a4cd705c6fdd5255f51bd17d"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/clive/releases/download/v0.10.5/clive_Darwin_arm64.tar.gz"
      sha256 "07bbf3c06de3efe827ba850fbde06ee1b536f80cd5b0fa7f7a84d291f1a18b98"

      def install
        bin.install "clive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.10.5/clive_Linux_x86_64.tar.gz"
      sha256 "7c53769f4817489973fb5f586314002ca8110d1b16b6c1f0bb2b5db31f6df536"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/clive/releases/download/v0.10.5/clive_Linux_arm64.tar.gz"
      sha256 "669b83219e4fe9c05e51b4b66a490ecf6940a75925bdf5f1bcfacb1b983ec27e"

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
