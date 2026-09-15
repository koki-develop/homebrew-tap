class Cubby < Formula
  desc "Secret store gated by Touch ID"
  homepage "https://github.com/koki-develop/cubby"
  version "0.4.0"
  license "MIT"

  url "https://github.com/koki-develop/cubby/releases/download/v#{version}/cubby_Darwin_arm64.tar.gz"
  sha256 "d4759136f626f40ec448bd9710ca1a71830ba7e46e8adf98b3e764bce6c02f6d"

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
