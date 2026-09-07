class Cubby < Formula
  desc "Secret store gated by Touch ID"
  homepage "https://github.com/koki-develop/cubby"
  version "0.2.0"
  license "MIT"

  url "https://github.com/koki-develop/cubby/releases/download/v#{version}/cubby_Darwin_arm64.tar.gz"
  sha256 "8d1f0262f91834c3313701ed9360b3102952042bf6800752253d47fcbf4ad938"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "cubby"
  end

  test do
    system bin/"cubby", "--help"
  end
end
