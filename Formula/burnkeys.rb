class Burnkeys < Formula
  desc "Find, check and rotate API keys across your projects without printing them"
  homepage "https://burnkeys.com"
  url "https://burnkeys.com/download/burnkeys-cli-0.2.8.tar.gz"
  sha256 "6c02be0839e3d0e628666fd02fba83222fd6b21f2f7b624f862e918fcc5d853a"
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
