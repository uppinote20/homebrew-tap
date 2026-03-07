class Clavis < Formula
  desc "Claude Code system administration tool — TUI & Web"
  homepage "https://github.com/uppinote20/clavis"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/clavis/releases/download/v0.3.0/clavis-aarch64-apple-darwin.tar.gz"
      sha256 "e7fbaa4aac6e466b821ae91b4a1c130542b25faa9cba682c9badc129a527a4e5"
    else
      url "https://github.com/uppinote20/clavis/releases/download/v0.3.0/clavis-x86_64-apple-darwin.tar.gz"
      sha256 "1083877a7b87c12d958af483a1fa4ce2324725614af6e380c324e6c746b13d63"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/clavis/releases/download/v0.3.0/clavis-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "56462653a13615968c4cef2b647402a0b8673a7055b83e6cf1bc97757f7fa8a0"
  end

  def install
    bin.install "clavis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clavis --version")
  end
end
