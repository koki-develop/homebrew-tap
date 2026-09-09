class Cubby < Formula
  desc "Secret store gated by Touch ID"
  homepage "https://github.com/koki-develop/cubby"
  version "0.3.2"
  license "MIT"

  url "https://github.com/koki-develop/cubby/releases/download/v#{version}/cubby_Darwin_arm64.tar.gz"
  sha256 "495e406511f43cc2c2425cee4e7bef707ea0e2e01c5aec3e11ebd6006aa33759"

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
