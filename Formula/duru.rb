class Duru < Formula
  desc "Terminal dashboard for Claude Code — explore, manage, and monitor your setup"
  homepage "https://github.com/uppinote20/duru"
  version "0.3.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/duru/releases/download/v0.3.1/duru-aarch64-apple-darwin.tar.gz"
      sha256 "ae8fc9de0a3885937fda08421ae7242b11785f41d26519948ff400542570c564"
    else
      url "https://github.com/uppinote20/duru/releases/download/v0.3.1/duru-x86_64-apple-darwin.tar.gz"
      sha256 "c725ff0a85ecef389ce5783866513bd3fe18c483935276538935b5f2deb40135"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/duru/releases/download/v0.3.1/duru-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0ad96e0bb5a521888493298715683984656800792d8fa2865525bf7e085bde8e"
  end

  def install
    bin.install "duru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duru --version")
  end
end
