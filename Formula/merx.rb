class Merx < Formula
  desc "Run your flowcharts"
  homepage "https://github.com/koki-develop/merx"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "7eff652b7d502338b6516957d1c9387da9d15cf9fada43e4190371c72fa4336a"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1633f3252021f49d3ac5e556d4e11d3ac545fd14162ebdebe2ece8e3b6538240"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "053e11aa5ce53e2889844d7f9d2edf2222ffda1a3c1f2fd2924782ed389b44c2"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "79811b90bc77a128c40904788c876d0d5bd4913076d822aa9204a799ed957863"
    end
  end

  def install
    bin.install "merx"
  end

  test do
    system "#{bin}/merx", "--help"
  end
end
