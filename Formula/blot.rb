class Blot < Formula
  desc "Secret masking filter"
  homepage "https://github.com/koki-develop/blot"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_x86_64.tar.gz"
      sha256 "663edcd31d4efaafbd8495f6e1af8c66bf1cc7c6adbbe4a6fb743bc80592978d"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_arm64.tar.gz"
      sha256 "0a8195b8cdc7280453eff3e6546bf496ad8f8f1f936235f871188ff937b8bfc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_x86_64.tar.gz"
      sha256 "8bd14b8016899cc03191b1cd634d0afbd769f8214b2ce6bd87518b1d44d208ee"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_arm64.tar.gz"
      sha256 "d4f9dd2c8a49cd9be453c569196ed1f2eb3152a310ae17324ec47228fb8654f1"
    end
  end

  def install
    bin.install "blot"
  end

  test do
    system bin/"blot", "--help"
  end
end
