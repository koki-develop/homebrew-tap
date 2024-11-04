# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Moview < Formula
  desc ""
  homepage ""
  version "0.1.1"

  depends_on "ffmpeg"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/moview/releases/download/v0.1.1/moview_Darwin_x86_64.tar.gz"
      sha256 "ed4926a46d67dd7eb3a7ee6bffbdc826b916b7d1e36216a141477d1c025d4bb3"

      def install
        bin.install "moview"
      end
    end
    on_arm do
      url "https://github.com/koki-develop/moview/releases/download/v0.1.1/moview_Darwin_arm64.tar.gz"
      sha256 "67dbbe197089cdc6f76e89a1bb1b49eef21a4a45e034d262862aaa3e9a130fef"

      def install
        bin.install "moview"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/koki-develop/moview/releases/download/v0.1.1/moview_Linux_x86_64.tar.gz"
        sha256 "572b60d48b16985175f304467dc4691488da6cf95ecca1aea0a1e03235e839da"

        def install
          bin.install "moview"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/koki-develop/moview/releases/download/v0.1.1/moview_Linux_arm64.tar.gz"
        sha256 "a20134df4be0d3e3bb1583fd1bdf45963ded7674a58dbb5a067395789a6e14d7"

        def install
          bin.install "moview"
        end
      end
    end
  end
end
