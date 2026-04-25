class Duru < Formula
  desc "Terminal dashboard for Claude Code — explore, manage, and monitor your setup"
  homepage "https://github.com/uppinote20/duru"
  version "0.4.1"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/duru/releases/download/v0.4.1/duru-aarch64-apple-darwin.tar.gz"
      sha256 "f5087eaa1aeba6841fe43443067b76385eb3fce720ec5eb40ca99ca187ce2e9c"
    else
      url "https://github.com/uppinote20/duru/releases/download/v0.4.1/duru-x86_64-apple-darwin.tar.gz"
      sha256 "c5bfe25836a1b7648751c3d7c60e80a3aeb50296075a20a8a2742eebe42ec2ec"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/duru/releases/download/v0.4.1/duru-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e71c5d987d07a417aa3995c1aa5d373af683dab34bf3ff53805123c1a6ca7004"
  end

  def install
    bin.install "duru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duru --version")
  end
end
