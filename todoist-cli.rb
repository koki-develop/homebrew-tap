# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TodoistCli < Formula
  desc ""
  homepage ""
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/todoist-cli/releases/download/v0.3.0/todoist-cli_Darwin_x86_64.tar.gz"
      sha256 "8355528bad9eef301b67993aeb81ce926828c99510d531a421b2835ff4532bc6"

      def install
        bin.install "todoist-cli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/todoist-cli/releases/download/v0.3.0/todoist-cli_Darwin_arm64.tar.gz"
      sha256 "1df7e8d42f56777ac6e940e87fcd53f9f3b7bb75eaafd770d903708a99f5defe"

      def install
        bin.install "todoist-cli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/todoist-cli/releases/download/v0.3.0/todoist-cli_Linux_arm64.tar.gz"
      sha256 "b884b49219842de6424f7f9f7904dab920c9a9cb97708af780c2ceb503a2655e"

      def install
        bin.install "todoist-cli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/todoist-cli/releases/download/v0.3.0/todoist-cli_Linux_x86_64.tar.gz"
      sha256 "21348c7868d2be05c1263ec2f46fe645f74f470d448de5b8294b91c5d0a3cde2"

      def install
        bin.install "todoist-cli"
      end
    end
  end
end
