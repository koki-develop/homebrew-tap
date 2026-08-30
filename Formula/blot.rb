class Blot < Formula
  desc "Secret masking filter"
  homepage "https://github.com/koki-develop/blot"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_x86_64.tar.gz"
      sha256 "e1d8b32a8893417fcf7ef0ce04c7a06b878e47937d2658c8d29082da0442fc9e"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Darwin_arm64.tar.gz"
      sha256 "c448a6e691c48f3f1b1ca768265abbedcd852ca2994f9ccfe0a209de25c340d2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_x86_64.tar.gz"
      sha256 "01d76fd2ecccf034f3709c916e3f67e34c70bc2051008b0384aa9141c1f1b242"
    end
    on_arm do
      url "https://github.com/koki-develop/blot/releases/download/v#{version}/blot_Linux_arm64.tar.gz"
      sha256 "d0faa0cacf3fa409494332f99533ebae7b252c1309217b474dd27539e9c8050e"
    end
  end

  def install
    bin.install "blot"
  end

  test do
    system bin/"blot", "--help"
  end
end
