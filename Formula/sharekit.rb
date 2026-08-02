class Sharekit < Formula
  desc "Share your AI coding setup — install profiles from GitHub with one command"
  homepage "https://github.com/LucasSantana-Dev/sharekit"
  license "MIT"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.1/sharekit-macos-arm64"
      sha256 "a20cde5fe91afa92d552991eb3c120f7b8febc4393e5dc18faa4915589da57cf"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.1/sharekit-macos-x64"
      sha256 "55b5e3450f916a43c85801166fb9487d1c4ab3e707e9ac3d41e4631e2581d320"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.1/sharekit-linux-arm64"
      sha256 "a976b789a9b31cb64f89329ea5feb094a89568ffd2a9e9d549acfa4c84eefdac"
    end
    on_intel do
      url "https://github.com/LucasSantana-Dev/sharekit/releases/download/v0.6.1/sharekit-linux-x64"
      sha256 "09a01fcdaf031eb0f7a22115eb53ca5468ef51a33fce71e96e82d2f164084270"
    end
  end

  def install
    bin.install stable.url.split("/").last => "sharekit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sharekit --version")
  end
end
