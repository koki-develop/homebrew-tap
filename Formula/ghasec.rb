class Ghasec < Formula
  desc ""
  homepage "https://github.com/koki-develop/ghasec"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_x86_64.tar.gz"
      sha256 "059200d23a56161a40ab550532c1b9073a4e8b97298c45c69f8f630cb7697367"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Darwin_arm64.tar.gz"
      sha256 "f3976d15028523d5b86f30462d33d66a4c338139e8e3a17bf279df34be08934d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_x86_64.tar.gz"
      sha256 "8f1617391c0d8ed84c8cfe0415c5f1693f8e7b2698e275ad85800e55d2dfa599"
    end
    on_arm do
      url "https://github.com/koki-develop/ghasec/releases/download/v#{version}/ghasec_Linux_arm64.tar.gz"
      sha256 "e1e83f4b1b23dbf87b5bba9b730ae62875ad7f4ae20ec05e8dc81baf1ff36d60"
    end
  end

  def install
    bin.install "ghasec"
  end

  test do
    system "#{bin}/ghasec", "--help"
  end
end
