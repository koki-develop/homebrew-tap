# typed: strict
# frozen_string_literal: true

# Gorocket formula
class Gorocket < Formula
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gorocket/releases/download/v0.0.3/gorocket_v0.0.3_darwin_arm64.tar.gz"
      sha256 "5bb35ef1f05d924016b63af27fcb774883d9d305270c5c62076e8208eac181c2"
    else
      url "https://github.com/koki-develop/gorocket/releases/download/v0.0.3/gorocket_v0.0.3_darwin_amd64.tar.gz"
      sha256 "05dba2ddef91ede814d861c644f287e12a9b87e8a8975ca059c1bce960b5ec8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/koki-develop/gorocket/releases/download/v0.0.3/gorocket_v0.0.3_linux_arm64.tar.gz"
      sha256 "a5a233462dcb3a248ccff32d5cdfd446020976ae2b67aead5ad6f24757c49a03"
    else
      url "https://github.com/koki-develop/gorocket/releases/download/v0.0.3/gorocket_v0.0.3_linux_amd64.tar.gz"
      sha256 "52f2b5caf594a4f8dea79491e6715a589d97e7708c9ac12177784a083394515c"
    end
  end

  def install
    bin.install "gorocket"
  end
end
