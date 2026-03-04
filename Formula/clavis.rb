class Clavis < Formula
  desc "Claude Code system administration tool — TUI & Web"
  homepage "https://github.com/uppinote20/clavis"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/clavis/releases/download/v0.2.1/clavis-aarch64-apple-darwin.tar.gz"
      sha256 "cf74747b24ad14b860cc98ccfc0dc66a53d94619989a5c342dc9b279e59cfc3f"
    else
      url "https://github.com/uppinote20/clavis/releases/download/v0.2.1/clavis-x86_64-apple-darwin.tar.gz"
      sha256 "0a943b1e9c1e0e253eea84134c080dc7c57b30d1a65080528a3db005c61142d6"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/clavis/releases/download/v0.2.1/clavis-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b95b63bba3e2a5c80462c5e80bc9864f1c112e1e0df175c5ba248b01ed32a97a"
  end

  def install
    bin.install "clavis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clavis --version")
  end
end
