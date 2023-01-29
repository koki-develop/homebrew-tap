# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Todoist < Formula
  desc ""
  homepage ""
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/todoist/releases/download/v0.1.0/todoist_Darwin_x86_64.tar.gz"
      sha256 "c1fe891a7bfc498a65977663b44d38cced6747ca39d885f335866b1b552b341c"

      def install
        bin.install "todoist"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/todoist/releases/download/v0.1.0/todoist_Darwin_arm64.tar.gz"
      sha256 "5f0887b23a34bad63f1b602992085b4e1b67bff5c11a641b484f1585d35da114"

      def install
        bin.install "todoist"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/todoist/releases/download/v0.1.0/todoist_Linux_arm64.tar.gz"
      sha256 "f2a6ec57d4bd0246064e58f6d579ba52b3af24604af83c1af28d369e036bd26b"

      def install
        bin.install "todoist"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/todoist/releases/download/v0.1.0/todoist_Linux_x86_64.tar.gz"
      sha256 "141d9e39de54d2d92e2650a097799fe3ccd77d06acd59dac684157f93585d9e1"

      def install
        bin.install "todoist"
      end
    end
  end
end
