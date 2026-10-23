class Burnkeys < Formula
  desc "Find, check and rotate API keys across your projects without printing them"
  homepage "https://burnkeys.com"
  url "https://burnkeys.com/download/burnkeys-cli-0.2.2.tar.gz"
  sha256 "a9e0069cdde4ddb0af46be6c7ecdea5b98a192a6629eb6740bfda39d804f6900"
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
