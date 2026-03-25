class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "8fccfdf8594c8e47b54eeb8ee8ca5706cc9f5d521c1cecba2678f1694aef2d9d"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "0719d0b5cb5c857cc19c2d1f9be7913adce50a0f168c7d012ef79789562d44ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "09828f799f69e38ee3b98e1863a3ee81ff1ae1d5384a0ac813c7585e2ca2d7c0"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "8ec09874a83094cf1f6622f3af000764439040176892db83973297463dcc113b"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
