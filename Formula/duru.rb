class Duru < Formula
  desc "Terminal dashboard for Claude Code — explore, manage, and monitor your setup"
  homepage "https://github.com/uppinote20/duru"
  version "0.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/duru/releases/download/v0.3.0/duru-aarch64-apple-darwin.tar.gz"
      sha256 "76569ab551225474b9eee92c9ce6ffd2189b834f6d494c87c017d512530c1c01"
    else
      url "https://github.com/uppinote20/duru/releases/download/v0.3.0/duru-x86_64-apple-darwin.tar.gz"
      sha256 "12e1a1bbd2e0b074c18832d801865ac6a31340ab07362d290e36d339e397b9a8"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/duru/releases/download/v0.3.0/duru-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7e8322a5a32a85c243b2fb2756d52afe93192bd0e00ab612c4349fc8640a0828"
  end

  def install
    bin.install "duru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duru --version")
  end
end
