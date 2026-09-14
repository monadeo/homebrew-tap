class Astrogate < Formula
  desc "Event-driven orchestration of Pi coding sessions in herdr, driven by GitHub"
  homepage "https://github.com/monadeo/astrogate"
  url "https://github.com/monadeo/astrogate/releases/download/v0.0.9/astrogate-0.0.9.tar.gz"
  # url + sha256 are re-stamped by the release workflow on each tag.
  sha256 "f3091bbf5d6a22ac3001bad7880a9b138bf688571ecd837139945cfdb7b63fbb"
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
