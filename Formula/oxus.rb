class Oxus < Formula
  desc "MCP server that exposes macOS Spotlight search to MCP clients over stdio"
  homepage "https://github.com/csanfilippo/oxus"
  url "https://github.com/csanfilippo/oxus/releases/download/v0.2.0/oxus-macos-arm64.zip"
  sha256 "1a7b407524471fb2b8103a7d327557f2ed03db0b8f2a9d17d66d9b694bea03c6"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  def install
    bin.install "oxus"
  end

  test do
    assert_equal "oxus #{version}\n", shell_output("#{bin}/oxus --version")
  end
end
