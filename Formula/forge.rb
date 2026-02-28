class Forge < Formula
  desc "Forge is a secure, portable AI Agent runtime. Run agents locally, in cloud, or enterprise environments without exposing inbound tunnels."
  homepage "https://github.com/initializ/forge"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/initializ/forge/releases/download/v#{version}/forge-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/initializ/forge/releases/download/v#{version}/forge-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/initializ/forge/releases/download/v#{version}/forge-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "PLACEHOLDER"
      else
        url "https://github.com/initializ/forge/releases/download/v#{version}/forge-armv7l-unknown-linux-gnueabihf.tar.gz"
        sha256 "PLACEHOLDER"
      end
    else
      url "https://github.com/initializ/forge/releases/download/v#{version}/forge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/forge --version")
  end
end
