class Merx < Formula
  desc "Run your flowcharts"
  homepage "https://github.com/koki-develop/merx"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "82ad6f3edaa15202b494785361a2ab1c484631465a9232aebd866329e6d6028d"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "91082076a98677f0baa82dfbd2c4e318d5d6a95b72433e40b02d678148caf336"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b756d6aaa9e860fd0c57588b4676e2fff4a69a3f3dfa0cbfb9e63a0dcf4764b"
    end
    on_arm do
      url "https://github.com/koki-develop/merx/releases/download/v#{version}/merx-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "611fe4d2e493caaf662c02133f4388df88b88a09e20bba98d61b902ae7cc2d65"
    end
  end

  def install
    bin.install "merx"
  end

  test do
    system "#{bin}/merx", "--help"
  end
end
