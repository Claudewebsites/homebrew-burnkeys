class Burnkeys < Formula
  desc "Find, check and rotate API keys across your projects without printing them"
  homepage "https://burnkeys.com"
  url "https://burnkeys.com/download/burnkeys-cli-0.2.5.tar.gz"
  sha256 "21fc42ab990e24d5e7f69a66ea3d0fb930c3a5c9b4f7c3334422a5d51a077d3f"
  license "Apache-2.0"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    (bin/"burnkeys").write_env_script libexec/"bin/burnkeys.js", PATH: "#{Formula["node"].opt_bin}:$PATH"
  end

  test do
    assert_match "burnkeys", shell_output("#{bin}/burnkeys help")
  end
end
