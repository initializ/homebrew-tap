# typed: false
# frozen_string_literal: true

class Initializ < Formula
  desc "Initializ platform CLI for CI pipelines"
  homepage "https://initializ.ai"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/initializ/cli/releases/download/v0.1.1/initializ_darwin_arm64.tar.gz"
      sha256 "ca7416fc5c68d1f358a2e36bd35fa6fadbe15b3c7796bc58b877b44fe114482b"
    else
      url "https://github.com/initializ/cli/releases/download/v0.1.1/initializ_darwin_amd64.tar.gz"
      sha256 "d97d4d9ae1b46a526d67d5b2aedb6eed8c84e76d312cf3b0867cc36b8d2a3350"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/initializ/cli/releases/download/v0.1.1/initializ_linux_arm64.tar.gz"
      sha256 "bdfcb1534dd8438164c5da37f60d12d852b29febd5a4babaab23cb4e7c33f43e"
    else
      url "https://github.com/initializ/cli/releases/download/v0.1.1/initializ_linux_amd64.tar.gz"
      sha256 "e86e67ff6abb1b7ba5bb586eae447eae17fc8995a362746f1b98f2a47b863976"
    end
  end

  def install
    bin.install "initializ"
  end

  test do
    system "#{bin}/initializ", "version"
  end
end
