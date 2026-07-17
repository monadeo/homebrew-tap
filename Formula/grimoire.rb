class Grimoire < Formula
  desc "Documentation retrieval CLI + MCP server for AI coding agents"
  homepage "https://grimoire.monadeo.com"
  url "https://registry.npmjs.org/@monadeo.com/grimoire-cli/-/grimoire-cli-0.3.0.tgz"
  # url + sha256 are re-stamped by the release pipeline on each publish.
  sha256 "b6c25eb493d98e68e97c9e5aaef6080af2737314d41382cdaac450146894d379"
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
