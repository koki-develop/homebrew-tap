class Merx < Formula
  desc "Run your flowcharts"
  homepage "https://github.com/koki-develop/merx"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "46f209037432824e2f9ec753ab2da52ae5aa968af4ca6da012c25308a9d6b5da"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dc1a8003e7faae017c967ab5f1da2bee1d318bc61bf1ea53e75cf8fc594169b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b65655034d7ac085b2afa5f5e5e983330b7d244d8d60bffe1a4df6cab3052ae"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "820004aee0d207431b29970c140589a0dddd7245d70e3aecc7e0284da43e62dc"
    end
  end

  def install
    bin.install "merx"
  end

  test do
    system "#{bin}/merx", "--help"
  end
end
