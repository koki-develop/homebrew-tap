class Cubby < Formula
  desc "Secret store gated by Touch ID"
  homepage "https://github.com/koki-develop/cubby"
  version "0.3.0"
  license "MIT"

  url "https://github.com/koki-develop/cubby/releases/download/v#{version}/cubby_Darwin_arm64.tar.gz"
  sha256 "c8ee4d0190731cb3dffab5a844b884d0678e76cdf812f31a3529ea5afc7de7c4"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "cubby"
  end

  test do
    system bin/"cubby", "--help"
  end
end
