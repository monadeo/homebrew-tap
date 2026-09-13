class Grimoire < Formula
  desc "Documentation retrieval CLI + MCP server for AI coding agents"
  homepage "https://grimoire.monadeo.com"
  url "https://registry.npmjs.org/@monadeo.com/grimoire-cli/-/grimoire-cli-0.19.12.tgz"
  # url + sha256 are re-stamped by the release pipeline on each publish.
  sha256 "ac8d1bedca5e3ca91a8b2fcacb128aa51a1cb785280a224a7d9d1a5c9c620f89"
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
