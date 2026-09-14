class Astrogate < Formula
  desc "Event-driven orchestration of Pi coding sessions in herdr, driven by GitHub"
  homepage "https://github.com/monadeo/astrogate"
  url "https://github.com/monadeo/astrogate/releases/download/v0.0.6/astrogate-0.0.6.tar.gz"
  # url + sha256 are re-stamped by the release workflow on each tag.
  sha256 "8ad671857684063560eafe0178be739ef2ffc21bbc9edbca4c5046360086c37f"
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
