class Oxus < Formula
  desc "MCP server that exposes macOS Spotlight search to MCP clients over stdio"
  homepage "https://github.com/csanfilippo/oxus"
  url "https://github.com/csanfilippo/oxus/releases/download/v0.2.1/oxus-macos-arm64.zip"
  sha256 "9bf46c0fdf3c57d11f8efb991d8c4a2e378da5caf7c560d5489ba1164bb7c24a"
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
