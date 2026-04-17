class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "92faf85ef49cb38d9eb5b603ee0edc532fda520b16c6f70d475c5840f7487281"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "3e92b9a27e34f567591270afb4d227a8cb822eb68ecef3bc0334c147a8987675"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "5445257f3946e8d27debef1c95c4a2f91a415d79107c761dc20088c28ada2364"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "52d621166ae71844f3ed61f291d9ac650fc7f21c6a74d393a8be0adf975a79d7"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
