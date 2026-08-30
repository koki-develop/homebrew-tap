class Blot < Formula
  desc "Secret masking filter"
  homepage "https://github.com/koki-develop/blot"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_x86_64.tar.gz"
      sha256 "19c3c10bacf4a9fa8e1a4f324d85e627546cc7523d95b372b3df697b42327774"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_arm64.tar.gz"
      sha256 "281d1768ff0fe8fe08ccaeb99e326554e818245c18aaf4fee1033bb38d341129"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_x86_64.tar.gz"
      sha256 "95ce284f1de8c0ccc0820c52c7863ba9d6f4366cabb5a4c7f113488fccc254a3"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_arm64.tar.gz"
      sha256 "9f9d64c8139469ddbb719932d7e4c375c7e001428a2eabb3e0f389b0fd8a323d"
    end
  end

  def install
    bin.install "blot"
  end

  test do
    system bin/"blot", "--help"
  end
end
