class Clavis < Formula
  desc "Claude Code system administration tool — TUI & Web"
  homepage "https://github.com/uppinote20/clavis"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/clavis/releases/download/v0.1.0/clavis-aarch64-apple-darwin.tar.gz"
      sha256 "f0e9f8726fdc4218834b304717c3d89e4cad4c8cf659b52f050008b865a374db"
    else
      url "https://github.com/uppinote20/clavis/releases/download/v0.1.0/clavis-x86_64-apple-darwin.tar.gz"
      sha256 "02981cdbaf7a57360a6c28e1d3b0de0f0e961fdfebcc996352cd3caf1191ee97"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/clavis/releases/download/v0.1.0/clavis-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "597e2700ceccdf262a08a34eb68e128f0fc86af645790893c55b6461466ca945"
  end

  def install
    bin.install "clavis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clavis --version")
  end
end
