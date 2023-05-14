# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clive < Formula
  desc "Automates terminal operations and lets you view them live via a browser"
  homepage "https://github.com/koki-develop/clive"
  version "0.12.4"

  depends_on "ttyd"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.4/clive_Darwin_arm64.tar.gz"
      sha256 "dbe0e1114d59333fd31fde8ff148a2a06d006b4b5668e850f6921481b8b20fc3"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.4/clive_Darwin_x86_64.tar.gz"
      sha256 "c827b9124bc4f78a0c1b1d7b2f31a34bd508c5a1690d9ca577ce9dde25906c22"

      def install
        bin.install "clive"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.4/clive_Linux_arm64.tar.gz"
      sha256 "e3b170d09f62169c8dec8997c500408587b864292770a845ef9312c904e01df3"

      def install
        bin.install "clive"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/clive/releases/download/v0.12.4/clive_Linux_x86_64.tar.gz"
      sha256 "8d89a8153119907bf9a7e0128d43ba4d932ea5806793ec8cf1bfbaed844a71c8"

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
