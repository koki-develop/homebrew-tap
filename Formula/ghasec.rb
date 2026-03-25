class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "460bf3bc37263f3a88d4dc3349f5e1732e420d9a05c0842852b4a58b01a34822"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "79bee0bd3b946008b0a51d081065ce49fbc244ee10c4875404abe47096ed290d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "3def146c11568de236a4cb79b5ea2becb6e6ab601cc4a1f91aa6ee993b2bae51"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "14d96a2f623b742da57c409afcfb57fa5b3e597bff2e21a2e1d2047bab7ccb6e"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
