class Grimoire < Formula
  desc "Documentation retrieval CLI + MCP server for AI coding agents"
  homepage "https://grimoire.monadeo.com"
  url "https://registry.npmjs.org/@monadeo.com/grimoire-cli/-/grimoire-cli-0.11.0.tgz"
  # url + sha256 are re-stamped by the release pipeline on each publish.
  sha256 "ac8c28494c8a1aa1e4e0f888180ed25ed3805b73922498a3d6a26a3bebe79c04"
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
