class Burnkeys < Formula
  desc "Find, check and rotate API keys across your projects without printing them"
  homepage "https://burnkeys.com"
  url "https://burnkeys.com/download/burnkeys-cli-0.2.3.tar.gz"
  sha256 "26368849325dfde359dd5d4595a78872dafb350ea7625adf94444ddb08829b1b"
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
