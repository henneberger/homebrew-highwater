class Highwater < Formula
  desc "Durable execution for streaming applications"
  homepage "https://highwater.cloud"
  version "0.0.2"
  license "Apache-2.0"

  if Hardware::CPU.arm?
    url "https://github.com/henneberger/highwater/releases/download/v0.0.2/highwater-darwin-arm64.tar.gz"
    sha256 "f1b926e960d0435a3163ef70d0d939d672cb73536d9fd2f8e6d38287d94d4fea"
  else
    url "https://github.com/henneberger/highwater/releases/download/v0.0.2/highwater-darwin-x86_64.tar.gz"
    sha256 "5920880536e2ec40aa4075c5bc1a2b86c1f6df338cd2114f9c47f1ffdfd9dd45"
  end

  def install
    bin.install "highwater"
  end

  test do
    assert_match "highwater 0.0.2", shell_output("#{bin}/highwater --version")
  end
end
