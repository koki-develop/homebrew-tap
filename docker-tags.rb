# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DockerTags < Formula
  desc ""
  homepage ""
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.3.0/docker-tags_Darwin_arm64.tar.gz"
      sha256 "e5b3c705b245191aade97d1200cbc23a4f3eccc2c72be51e74cca2dab0ba57f1"

      def install
        bin.install "docker-tags"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.3.0/docker-tags_Darwin_x86_64.tar.gz"
      sha256 "c177b90b6eeebc73b8e981ea29fd470ecd869e710c3d2e9dc5e6959a2e5f4be5"

      def install
        bin.install "docker-tags"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.3.0/docker-tags_Linux_arm64.tar.gz"
      sha256 "ca4f6515000332c908f769430d6d0a409d7dfb3e8e6d3a56e276f656bbb4488a"

      def install
        bin.install "docker-tags"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.3.0/docker-tags_Linux_x86_64.tar.gz"
      sha256 "b19d192cede04d9838f1cd35c9b7a951a382b8e6b1eaac7d6b28d531cb5bef70"

      def install
        bin.install "docker-tags"
      end
    end
  end
end