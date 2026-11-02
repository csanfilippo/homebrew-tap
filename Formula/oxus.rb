class Oxus < Formula
  desc "MCP server that exposes macOS Spotlight search to MCP clients over stdio"
  homepage "https://github.com/csanfilippo/oxus"
  url "https://github.com/csanfilippo/oxus/releases/download/v0.1.0/oxus-0.1.0-macos-arm64.zip"
  sha256 "43a93dd85ad4c6c8fe6c793f429b2826d7b960a160aab1b7a4739e3497b054a7"
  license "MIT"

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  def install
    bin.install "oxus"
  end

  test do
    initialize = '{"jsonrpc":"2.0","id":1,"method":"initialize","params":' \
                 '{"protocolVersion":"2025-06-18","capabilities":{},"clientInfo":{"name":"brew","version":"0"}}}'
    # oxus exits as soon as stdin closes, so the response is read while stdin is still open.
    IO.popen(bin/"oxus", "r+") do |server|
      server.puts initialize
      assert_match "\"version\":\"#{version}\"", server.gets
    end
  end
end
