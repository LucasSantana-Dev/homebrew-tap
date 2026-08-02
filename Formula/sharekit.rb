class Sharekit < Formula
  desc "Share your AI coding setup — install profiles from GitHub with one command"
  homepage "https://github.com/LucasSantana-Dev/sharekit"
  license "MIT"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.2/sharekit-macos-arm64"
      sha256 "0efd496c4b09b92b2aa34cfcf0f4aa1fbe001a1c3f436ce7f88b2bf1c0a5315a"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.2/sharekit-macos-x64"
      sha256 "219dcfe018f2b0f0f64cd6dce2e7a3f7385d7d5166102d0a95293fadb6d5bcf9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.2/sharekit-linux-arm64"
      sha256 "ba0b7b1a21b932584436599d8491b9bf6fa98cf88d04356cb8ac81fc75bc738d"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.2/sharekit-linux-x64"
      sha256 "b1742a31ebab36b1bfbe118e5c5bbff83c509739c0ced304f05353a808d477f2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "sharekit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sharekit --version")
  end
end
