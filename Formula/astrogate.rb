class Astrogate < Formula
  desc "Event-driven orchestration of Pi coding sessions in herdr, driven by GitHub"
  homepage "https://github.com/monadeo/astrogate"
  url "https://github.com/monadeo/astrogate/releases/download/v0.0.4/astrogate-0.0.4.tar.gz"
  # url + sha256 are re-stamped by the release workflow on each tag.
  sha256 "bc89c44e530a6592df430b6bd0e922d7d2abcd2690a598616f25247e52777d0d"
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
