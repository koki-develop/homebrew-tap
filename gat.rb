# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gat < Formula
  desc ""
  homepage ""
  version "0.18.0"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/gat/releases/download/v0.18.0/gat_Darwin_x86_64.tar.gz"
      sha256 "65e1ac9656736a34633d1580f80368791209a600aae102a9c7a81a9267c8e12b"

      def install
        bin.install "gat"
      end
    end
    on_arm do
      url "https://github.com/koki-develop/gat/releases/download/v0.18.0/gat_Darwin_arm64.tar.gz"
      sha256 "c531ffa78c66b38e507aff00e16eebfe315379d6b61156d5f81120fed2999910"

      def install
        bin.install "gat"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/koki-develop/gat/releases/download/v0.18.0/gat_Linux_x86_64.tar.gz"
        sha256 "d4882b1c5ef70cfe12b14caad562e40b0f25f9b8591c4214098e94fa206078f4"

        def install
          bin.install "gat"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/koki-develop/gat/releases/download/v0.18.0/gat_Linux_arm64.tar.gz"
        sha256 "9adce1537a74619dc5487031ffd408df6659e0eb2ebbf9332008cd06cdd812b4"

        def install
          bin.install "gat"
        end
      end
    end
  end
end
