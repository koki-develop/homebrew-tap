class Cubby < Formula
  desc "Secret store gated by Touch ID"
  homepage "https://github.com/koki-develop/cubby"
  version "0.1.0"
  license "MIT"

  url "https://github.com/koki-develop/cubby/releases/download/v#{version}/cubby_Darwin_arm64.tar.gz"
  sha256 "2b518e7ca14246e8f279768f24a56ab55681311dc52979f590e6a565cb841ee7"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "cubby"
  end

  test do
    system bin/"cubby", "--help"
  end
end
