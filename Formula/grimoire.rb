class Grimoire < Formula
  desc "Documentation retrieval CLI + MCP server for AI coding agents"
  homepage "https://grimoire.monadeo.com"
  license "Apache-2.0"
  url "https://registry.npmjs.org/@monadeo/grimoire-cli/-/grimoire-cli-0.1.0.tgz"
  # Placeholder — the release pipeline stamps the real tarball sha256 on publish.
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "."
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "grimoire", shell_output("#{bin}/grimoire help")
  end
end
