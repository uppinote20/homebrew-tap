class Duru < Formula
  desc "Terminal dashboard for Claude Code — explore, manage, and monitor your setup"
  homepage "https://github.com/uppinote20/duru"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/duru/releases/download/v0.1.0/duru-aarch64-apple-darwin.tar.gz"
      sha256 "dd7fef50633253095a1e61eb5ac191d80e742cf1462cfc7c0f1215e9258f4778"
    else
      url "https://github.com/uppinote20/duru/releases/download/v0.1.0/duru-x86_64-apple-darwin.tar.gz"
      sha256 "688b2e5b2eebbd8e4bf5a754d498dea1085cfe85e8fb71b6493a667a72c027ed"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/duru/releases/download/v0.1.0/duru-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5fef7ae5a2eeaa5db6a0d2552161e7483eadc6513a2a3268c3e4c00135c9f4c5"
  end

  def install
    bin.install "duru"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/duru --version")
  end
end
