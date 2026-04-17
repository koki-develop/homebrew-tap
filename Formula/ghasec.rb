class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "dc2d29e178346f2b7d14dfe5065de174b05a5c235a4f52b22f2b8abbe1ef0e47"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "4987d0655e2092d29a57c9074dfb712c3c37034463370ad22e324835fef4e8bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "d8da102fa59cc84f3e71edcfc410b3829df725a7d53a6786fe61b0a9d54009d3"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "f32089bf2f2b324f758b132854226a3a90d46a6d5d2701fb1b0bf881dc8cfe7d"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
