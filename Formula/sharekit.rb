class Sharekit < Formula
  desc "Share your AI coding setup — install profiles from GitHub with one command"
  homepage "https://github.com/LucasSantana-Dev/sharekit"
  license "MIT"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.0/sharekit-macos-arm64"
      sha256 "05a9987bcd3c032c3867bb07ccd661b1d9442be46c3d7d4b68d63c4694edc804"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.0/sharekit-macos-x64"
      sha256 "9280b7a8fd7eed733a446a0eb534a2b8b0d2bd6fb098c5b0b0a0d49c794f8d58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.0/sharekit-linux-arm64"
      sha256 "a6f2abe7c78706fb4b3ae3338df0093e40276aed86e82f1f398bb090b3bc7a3e"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.0/sharekit-linux-x64"
      sha256 "fad74ed5910f013dc117b34423c7060bfb4d3a31c83bae4895ca84425cd294cb"
    end
  end

  def install
    bin.install stable.url.split("/").last => "sharekit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sharekit --version")
  end
end
