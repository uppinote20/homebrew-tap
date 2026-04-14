class Duru < Formula
  desc "Terminal dashboard for Claude Code — explore, manage, and monitor your setup"
  homepage "https://github.com/uppinote20/duru"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/duru/releases/download/v0.2.0/duru-aarch64-apple-darwin.tar.gz"
      sha256 "f5b1248d7e765f400668646f01ca628fd55c4c83d6e22d4c94aaae644e235623"
    else
      url "https://github.com/uppinote20/duru/releases/download/v0.2.0/duru-x86_64-apple-darwin.tar.gz"
      sha256 "43cb6c933363a76af9b17f048d69920dd53548c5d14ad13fc822204ae6c4eb5e"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/duru/releases/download/v0.2.0/duru-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "068fc4ac89fc990fd284af753023ef0a5516a27763eda7e7ada6b3c3baed5ea8"
  end

  def install
    bin.install "duru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duru --version")
  end
end
