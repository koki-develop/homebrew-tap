class Merx < Formula
  desc "Run your flowcharts"
  homepage "https://github.com/koki-develop/merx"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "729e126140b827794df77dd5eae3c0041bfec3b308664b43b15f1ba6c16021f1"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fe47800e9959bf32966b4f8609adb757a449b08650e7414c1212d54d7a4e1eb4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae0dd5852961a69d7f5371636d286516dc23c62c7665f602e656652a28829a3b"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b53f46f30ae7577e395b8f89bebb44c9726f721e4778cb5e2015e928d727f7a"
    end
  end

  def install
    bin.install "merx"
  end

  test do
    system "#{bin}/merx", "--help"
  end
end
