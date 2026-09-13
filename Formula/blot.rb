class Blot < Formula
  desc "Secret masking filter"
  homepage "https://github.com/koki-develop/blot"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_x86_64.tar.gz"
      sha256 "abc945e9c04c5f3beb398648d0c69044c75c058d9bae9d4509359beca25379ae"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_arm64.tar.gz"
      sha256 "15857a90dde3812118f6ae61e117db9add59dd52cb6589e1ff839f8b0656ba48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_x86_64.tar.gz"
      sha256 "993ee5f60f0f80890dae356602afbd3ccce9793299b598b85c72c8571591d671"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_arm64.tar.gz"
      sha256 "2ba232c51709140b4b69935dfa252d5f2752d1a7c58b8c116c8db1fd9c278fc4"
    end
  end

  def install
    bin.install "blot"
  end

  test do
    system bin/"blot", "--help"
  end
end
