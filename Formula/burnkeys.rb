class Burnkeys < Formula
  desc "Find, check and rotate API keys across your projects without printing them"
  homepage "https://burnkeys.com"
  url "https://burnkeys.com/download/burnkeys-cli-0.3.0.tar.gz"
  sha256 "8784d72cafb3b3b80a104c2b65525c0799800481e96fafd762dc6d829bf06505"
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
