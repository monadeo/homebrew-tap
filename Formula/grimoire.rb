class Grimoire < Formula
  desc "Documentation retrieval CLI + MCP server for AI coding agents"
  homepage "https://github.com/Monadeo/grimoire"
  url "https://registry.npmjs.org/@monadeo.com/grimoire-cli/-/grimoire-cli-0.1.0.tgz"
  # url + sha256 are re-stamped by the release pipeline on each publish.
  sha256 "bf954d8782c2fa8c560ce9b0cf78ddeae8aec47195b3dd4f4d99825e6027b1ae"
  license "Apache-2.0"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "."
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "grimoire", shell_output("#{bin}/grimoire help")
  end
end
