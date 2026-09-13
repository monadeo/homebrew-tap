class Astrogate < Formula
  desc "Event-driven orchestration of Pi coding sessions in herdr, driven by GitHub"
  homepage "https://github.com/monadeo/astrogate"
  url "https://github.com/monadeo/astrogate/releases/download/v0.0.1/astrogate-0.0.1.tar.gz"
  # url + sha256 are re-stamped by the release workflow on each tag.
  sha256 "4ddc1095c055bf67de56b6bb5f09b82cf623412a3a53146a18670c41ce3de2fe"
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
