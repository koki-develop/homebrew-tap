# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Qiita < Formula
  desc ""
  homepage ""
  version "0.0.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/qiita-cli/releases/download/v0.0.2/qiita_Darwin_x86_64.tar.gz"
      sha256 "02c3143c8eccecf7c1d70aeb9c84c71d836146300303d6b89f765ef1dbca081c"

      def install
        bin.install "qiita"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/qiita-cli/releases/download/v0.0.2/qiita_Darwin_arm64.tar.gz"
      sha256 "b0ef952fa103246fea91a0d203fc2435be2123f374fd931ae70c4f6829f9cc17"

      def install
        bin.install "qiita"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/qiita-cli/releases/download/v0.0.2/qiita_Linux_x86_64.tar.gz"
      sha256 "044c58381e68b3c26b7fade5745752f726b53f61a5824d2354bf43fb16d1d156"

      def install
        bin.install "qiita"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/qiita-cli/releases/download/v0.0.2/qiita_Linux_arm64.tar.gz"
      sha256 "c1ce74e05035b56a8b3907d2ae3d1295f1ec2cd53d77669f8637d9b12d05dba7"

      def install
        bin.install "qiita"
      end
    end
  end
end
