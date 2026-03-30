class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "1b2b3c53582b63ef18fcdd7594db4cdbabeba7e8700dd58a9ae39af43f331b84"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "90d484a07133bdf649622ab00fa2617525aa82b810fd6a14d4f3d6c944717273"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "6b73c723081dd592c0be7b2ad6882636c9cf55d983d098d6400dcd2ff33fcfb0"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "c3e455efbba198c7709b9d3bf6b3ef21c7b3bab438c2a4c46273ba480a5c4e8a"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
