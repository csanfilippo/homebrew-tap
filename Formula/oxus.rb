class Oxus < Formula
  desc "MCP server that exposes macOS Spotlight search to MCP clients over stdio"
  homepage "https://github.com/csanfilippo/oxus"
  url "https://github.com/csanfilippo/oxus/releases/download/v0.3.0/oxus-macos-arm64.zip"
  sha256 "c127ea8ad777f0714277656e2a7e7220124669d89a1957b9d0eb65f8e33682c3"
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
