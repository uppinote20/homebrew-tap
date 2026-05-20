class Duru < Formula
  desc "Terminal dashboard for Claude Code — explore, manage, and monitor your setup"
  homepage "https://github.com/uppinote20/duru"
  version "0.5.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/duru/releases/download/v0.5.0/duru-aarch64-apple-darwin.tar.gz"
      sha256 "2728d4b8efd384727f87b5ed04153205a8de1f51c3e235690ccdcffe1772c51e"
    else
      url "https://github.com/uppinote20/duru/releases/download/v0.5.0/duru-x86_64-apple-darwin.tar.gz"
      sha256 "2e405c8925ee8d7b01366269a53679fa0d588118f2df52e3a2edf6541ddd66c3"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/duru/releases/download/v0.5.0/duru-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6cba24c9c2c1a1bb540c01ab6f54308d5b45e2d93a153fd4debecfda30266d40"
  end

  def install
    bin.install "duru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duru --version")
  end
end
