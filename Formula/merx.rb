class Merx < Formula
  desc "Run your flowcharts"
  homepage "https://github.com/koki-develop/merx"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "70b83d73ea674de1d485d0a487efeae7462f1311a667109063381b979a5b8331"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "e5570c4590fe80955312be46a80258896d9e144c5109d564a4f45b627a1cfdec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3fd43e1e4b8d1fe1dd38a1bd88d6f560e38121f801c8aa519ccf4ba050b68563"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33059a4afbb14b3770bfd8aba9f6f67d746bae87ff155e4ea65149a4e4bff08a"
    end
  end

  def install
    bin.install "merx"
  end

  test do
    system "#{bin}/merx", "--help"
  end
end
