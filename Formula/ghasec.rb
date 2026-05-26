class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.13.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "e44d4efdf95cd01703c706dc56c38d418e07fa4edb4d04ad3c574ecfad962a41"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "87d74b43f8159ea40c4646c1b88c4d1ceb3c0bf3ddbd49f9c03a163fe074faf8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "2d5799967ab72fdbe412123eac919d02269c0e51d4eca58034ff5525a471f721"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "e4dd568b5ac6ea93d6b9a93f84f02f71ee94d6188f942a0f035aa13994edb85e"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
