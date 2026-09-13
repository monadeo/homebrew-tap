class Astrogate < Formula
  desc "Event-driven orchestration of Pi coding sessions in herdr, driven by GitHub"
  homepage "https://github.com/monadeo/astrogate"
  url "https://github.com/monadeo/astrogate/releases/download/v0.0.3/astrogate-0.0.3.tar.gz"
  # url + sha256 are re-stamped by the release workflow on each tag.
  sha256 "6b805dad36a9e500fe55167333c11dbefdd453221fd206cafcfde0b737a5afd1"
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
