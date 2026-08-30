class Blot < Formula
  desc "Secret masking filter"
  homepage "https://github.com/koki-develop/blot"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_x86_64.tar.gz"
      sha256 "a89c222d7dcb7223381f4a3c972cd3ea9045786556fb0922bb264b274128bf74"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_arm64.tar.gz"
      sha256 "31b083dfa3b0c76be3648feb25e654055edf8c9aad635dbca6a7acd6a080963d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_x86_64.tar.gz"
      sha256 "59f59b14200936eade4b7fdfa508547928be1fa8116967257eadb700d20ae875"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_arm64.tar.gz"
      sha256 "92ae2de872b7232b77b91b7c09dc27e5d7da0a7d12a74365feac0c828107383b"
    end
  end

  def install
    bin.install "blot"
  end

  test do
    system bin/"blot", "--help"
  end
end
