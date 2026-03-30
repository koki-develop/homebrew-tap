class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "cc4f9c569083f54fe5df94139f3053c0fbe4bf824dbdbb37bce9797f1b39b557"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "579b3dbf44b3ce9c02bcf36ab94688c4061635d7948ed3973781db9a482d91f2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "d21f3ce41e57749e43a3d489007acad79fae645a75c64752b92320d880d7d353"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "00ebe68ed1872acd9f4743a5d4ce42299b40d1df8c56bb9beee2dbad21e39fdb"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
