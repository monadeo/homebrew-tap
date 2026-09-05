class Grimoire < Formula
  desc "Documentation retrieval CLI + MCP server for AI coding agents"
  homepage "https://grimoire.monadeo.com"
  url "https://registry.npmjs.org/@monadeo.com/grimoire-cli/-/grimoire-cli-0.15.0.tgz"
  # url + sha256 are re-stamped by the release pipeline on each publish.
  sha256 "6530a4dbac40cbee27aa65dde8c6c347f9b9c5a2f53937564f050f86afb7bb6e"
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
