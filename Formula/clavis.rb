class Clavis < Formula
  desc "Claude Code system administration tool — TUI & Web"
  homepage "https://github.com/uppinote20/clavis"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/uppinote20/clavis/releases/download/v0.2.0/clavis-aarch64-apple-darwin.tar.gz"
      sha256 "433dfa950a975c889431b4f34fe201b004d8383330dc9c74615dfe598bf6fc18"
    else
      url "https://github.com/uppinote20/clavis/releases/download/v0.2.0/clavis-x86_64-apple-darwin.tar.gz"
      sha256 "3437ba8e2034ea7304d16c40bf776f38f3944a20f25fc80e2fa9f4c371d683cd"
    end
  end

  on_linux do
    url "https://github.com/uppinote20/clavis/releases/download/v0.2.0/clavis-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3153402d72915440890a6eb8dcc75b65da4c3f240d832dd45ab64d92e48bae04"
  end

  def install
    bin.install "clavis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clavis --version")
  end
end
