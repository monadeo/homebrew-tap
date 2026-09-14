class Astrogate < Formula
  desc "Event-driven orchestration of Pi coding sessions in herdr, driven by GitHub"
  homepage "https://github.com/monadeo/astrogate"
  url "https://github.com/monadeo/astrogate/releases/download/v0.0.5/astrogate-0.0.5.tar.gz"
  # url + sha256 are re-stamped by the release workflow on each tag.
  sha256 "a2be92142f4da3d778ea52d7732a47b92905a2dc3f4db5114e549d6b2f2fc5bf"
  license "MIT"
  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/astrogate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/astrogate version")
  end
end
