class Astrogate < Formula
  desc "Event-driven orchestration of Pi coding sessions in herdr, driven by GitHub"
  homepage "https://github.com/monadeo/astrogate"
  url "https://github.com/monadeo/astrogate/releases/download/v0.0.10/astrogate-0.0.10.tar.gz"
  # url + sha256 are re-stamped by the release workflow on each tag.
  sha256 "b8a5e97ded4c842e3d96ab215168b2c23d59a93008f19935f112e42c1694c80b"
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
