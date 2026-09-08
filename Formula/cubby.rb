class Cubby < Formula
  desc "Secret store gated by Touch ID"
  homepage "https://github.com/koki-develop/cubby"
  version "0.3.1"
  license "MIT"

  url "https://github.com/koki-develop/cubby/releases/download/v#{version}/cubby_Darwin_arm64.tar.gz"
  sha256 "e2c68459f5fbb2bc81395d41e2e1bea166581c0365fc01f9b4472f79a8a4acff"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "cubby"
    generate_completions_from_executable(bin/"cubby", "--generate-completion-script")
  end

  test do
    system bin/"cubby", "--help"
  end
end
