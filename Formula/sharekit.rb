class Sharekit < Formula
  desc "Share your AI coding setup — install profiles from GitHub with one command"
  homepage "https://github.com/LucasSantana-Dev/sharekit"
  license "MIT"
  version "0.6.3"

  on_macos do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.3/sharekit-macos-arm64"
      sha256 "6206aa5c3ca8d75940a5556140e3fd80310d9b0fa33d3481f4b1657da3081227"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.3/sharekit-macos-x64"
      sha256 "1ca0fca09d3241e7f413a9c7f06b17ac8e2b6483df709baa9695f119ed9510a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.3/sharekit-linux-arm64"
      sha256 "8fc780ed5a51720fb4c9b79b0480c3b12f34b86daf39bc15576f61c4c35313da"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.3/sharekit-linux-x64"
      sha256 "81b2249f5f353b7c7654a35be7565e74eda21b7ed24d686ae53f39830443c1a6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "sharekit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sharekit --version")
  end
end
