# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DockerTags < Formula
  desc ""
  homepage ""
  version "0.8.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.8.2/docker-tags_Darwin_arm64.tar.gz"
      sha256 "56810aa1125a0b3ad847df34a16810aabb38bee50e6de666750bc6b349e07889"

      def install
        bin.install "docker-tags"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.8.2/docker-tags_Darwin_x86_64.tar.gz"
      sha256 "b05cf83935a317dafb8fa36e204b405b2f425da17e99195dec913e831c27a0b1"

      def install
        bin.install "docker-tags"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.8.2/docker-tags_Linux_x86_64.tar.gz"
      sha256 "9749b4dcc81f6eb7a8152a3d1a9c58916f9db78649711ffca56cc114e3a393fd"

      def install
        bin.install "docker-tags"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.8.2/docker-tags_Linux_arm64.tar.gz"
      sha256 "0cb5c61e2dac713d2800faa707c14a5337abcc9c02f0043d3546d6868ae8872e"

      def install
        bin.install "docker-tags"
      end
    end
  end
end
