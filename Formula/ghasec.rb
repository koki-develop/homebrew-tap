class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "cce449ba60b0d71f10a5bf9dd88bce9f0ae4d92aefa416d95599408c717bc27f"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "c0b3019fe28ca67d6cfc9b7c79bbde87c5f15672631fc3b354cc284a78e9ff8f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "234d8eb9a93b8dc03cdf7b5367a86f4ddafc8a433081da028c27a89e3148e203"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "e6035a83db0a2d35cfc806b1fe4d4dbe64056d33b621601bd00fe6ea0c217426"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
