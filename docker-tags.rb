# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DockerTags < Formula
  desc ""
  homepage ""
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.5.0/docker-tags_Darwin_x86_64.tar.gz"
      sha256 "1f7fcb27fcb347c8a7540965df5cd73ec4ff97d3ba59161adb54eda21eac020e"

      def install
        bin.install "docker-tags"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.5.0/docker-tags_Darwin_arm64.tar.gz"
      sha256 "d76d010530b159943668e15372f9f0fa6557b0ec1e01a263c650b235f5575303"

      def install
        bin.install "docker-tags"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.5.0/docker-tags_Linux_arm64.tar.gz"
      sha256 "de53a3f272ee64b874cc40d7d05a895eca63465fbc39a8556e87f4cbf77bfe3b"

      def install
        bin.install "docker-tags"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/koki-develop/docker-tags/releases/download/v0.5.0/docker-tags_Linux_x86_64.tar.gz"
      sha256 "616429da2d1a6b24dccbc05bd94a51ed4d798cb57577bb7662ccbf631cd633a3"

      def install
        bin.install "docker-tags"
      end
    end
  end
end
