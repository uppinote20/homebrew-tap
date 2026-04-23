class Duru < Formula
  desc "Terminal dashboard for Claude Code — explore, manage, and monitor your setup"
  homepage "https://github.com/uppinote20/duru"
  version "0.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/duru/releases/download/v0.4.0/duru-aarch64-apple-darwin.tar.gz"
      sha256 "0b21e3c471e5b67a0c28e0d0824a6dd8de970764d9b12ecc1148373ce324254b"
    else
      url "https://github.com/uppinote20/duru/releases/download/v0.4.0/duru-x86_64-apple-darwin.tar.gz"
      sha256 "da4f7f8755513ea849d4528d6a93246c3af43b5dafbec0f30747defc2c6bbe8d"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/duru/releases/download/v0.4.0/duru-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "46191d58f2e79a084fcf0458026ef86f7de47243be9b620ca458053c2485e0fa"
  end

  def install
    bin.install "duru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duru --version")
  end
end
