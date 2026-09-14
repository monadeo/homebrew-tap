class Astrogate < Formula
  desc "Event-driven orchestration of Pi coding sessions in herdr, driven by GitHub"
  homepage "https://github.com/monadeo/astrogate"
  url "https://github.com/monadeo/astrogate/releases/download/v0.0.8/astrogate-0.0.8.tar.gz"
  # url + sha256 are re-stamped by the release workflow on each tag.
  sha256 "e838d53010630c864d686a1b92afc9cab7f6c836302767fdb4df622a294b96bf"
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
