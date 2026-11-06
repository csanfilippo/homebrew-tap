class Oxus < Formula
  desc "MCP server that exposes macOS Spotlight search to MCP clients over stdio"
  homepage "https://github.com/csanfilippo/oxus"
  url "https://github.com/csanfilippo/oxus/releases/download/v0.4.0/oxus-macos-arm64.zip"
  sha256 "e7bdc83964c632db8c60ecbdae6b4ca239a8378dbd3984b2d1e70c06645c785d"
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
