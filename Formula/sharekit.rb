class Sharekit < Formula
  desc "Share your AI coding setup — install profiles from GitHub with one command"
  homepage "https://github.com/LucasSantana-Dev/sharekit"
  license "MIT"
  version "0.6.4"

  on_macos do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.4/sharekit-macos-arm64"
      sha256 "168338b9939f8c554d1e93e7bdd5e4328275e494ebf726b3d00a2cc4f573d907"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.4/sharekit-macos-x64"
      sha256 "1807bb80b7a59d2c50ff2db9cad7620c59c81bf6404b7cebd108d4053ca59679"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.4/sharekit-linux-arm64"
      sha256 "22f2c2143a40c60c28df665b6f60f8fdf522d3e4ec3677405e6dc7fc182f2d9d"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.4/sharekit-linux-x64"
      sha256 "a5146e0b3633a7264c61f67599a4f0e7830aafad74ee88309b6c1d4f47d60071"
    end
  end

  def install
    bin.install stable.url.split("/").last => "sharekit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sharekit --version")
  end
end
