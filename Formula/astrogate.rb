class Astrogate < Formula
  desc "Event-driven orchestration of Pi coding sessions in herdr, driven by GitHub"
  homepage "https://github.com/monadeo/astrogate"
  url "https://github.com/monadeo/astrogate/releases/download/v0.0.7/astrogate-0.0.7.tar.gz"
  # url + sha256 are re-stamped by the release workflow on each tag.
  sha256 "d850060992cf8846539635089b462e52a1cce37d746f0dff8c02247ed63160c5"
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
