class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "9bd3701e202ac771a4edc6efd6f04d56d523a37d6ada4b187826e8c79d59a0c1"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "8652be407880b7f94f9f7af6f65e9741687ceb0a7099090e497c65068025c67d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "b98d4e28e90570d78a364a97fadcf1abb42fa87ba0c1f2bc5e0b1f08362e76ac"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "7b3cf2bf7d41e1eb80780243a1a7dd4ef56b4d3b190fbf0f329a5c13782bee5d"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
