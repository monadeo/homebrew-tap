class Grimoire < Formula
  desc "Documentation retrieval CLI + MCP server for AI coding agents"
  homepage "https://grimoire.monadeo.com"
  url "https://registry.npmjs.org/@monadeo.com/grimoire-cli/-/grimoire-cli-0.17.0.tgz"
  # url + sha256 are re-stamped by the release pipeline on each publish.
  sha256 "75fa7c87bbd5498cff9a649c56eb23ea18b0a8244f04c05b6c80828b7b06b39c"
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
