class Grimoire < Formula
  desc "Documentation retrieval CLI + MCP server for AI coding agents"
  homepage "https://grimoire.monadeo.com"
  license "Apache-2.0"
  # Node-based CLI distributed via npm; the formula installs it globally into the
  # Homebrew-managed Node. Version + sha are bumped by the release pipeline.
  url "https://registry.npmjs.org/@monadeo/grimoire-cli/-/grimoire-cli-0.1.0.tgz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  depends_on "node"

  def install
    system "npm", "install", "-g", "--prefix=#{libexec}", "@monadeo/grimoire-cli@#{version}"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "grimoire", shell_output("#{bin}/grimoire help")
  end
end
