# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DockerTags < Formula
  desc ""
  homepage ""
  version "0.8.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.8.1/docker-tags_Darwin_arm64.tar.gz"
      sha256 "26032fc0b15f604c27b211cec2eedec7dfca11eb6de2ba180be5b63795c7e422"

      def install
        bin.install "docker-tags"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.8.1/docker-tags_Darwin_x86_64.tar.gz"
      sha256 "ce9f24c0bfac1071e4bdb6380723d36fc44cbe40a9861e03b63598c6a8d0333b"

      def install
        bin.install "docker-tags"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.8.1/docker-tags_Linux_arm64.tar.gz"
      sha256 "119f5f50b4a9bad00fba63fb09501bb9cfa5f586ac56391b64a913695159d821"

      def install
        bin.install "docker-tags"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.8.1/docker-tags_Linux_x86_64.tar.gz"
      sha256 "71c7a3903a13ef867493f5db61cbf37ea736a27703c5fdb8399c38f8f5fb0883"

      def install
        bin.install "docker-tags"
      end
    end
  end
end
