class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "dd1f335be9fbee159af5aa8e1349ea9fdbf564046abf882524d2fa0da3acfeeb"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "d412b7adeef8e5b39ecfc2fd5852a9a62bf4aa9e2ddf0b4d2ba61e94804f6e93"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "026d1cd5b320c3961b6861f6a19148052dc6a0b7aafa158c653d1791ce2935db"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "901611e065c4e91b027929fca2c4276b3873bed0ae067a0f2430aa0e049e7682"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
