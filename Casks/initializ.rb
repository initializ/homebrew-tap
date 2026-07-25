cask "initializ" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1"
  sha256 arm:   "ca7416fc5c68d1f358a2e36bd35fa6fadbe15b3c7796bc58b877b44fe114482b",
         intel: "d97d4d9ae1b46a526d67d5b2aedb6eed8c84e76d312cf3b0867cc36b8d2a3350"

  url "https://github.com/initializ/cli/releases/download/v#{version}/initializ_darwin_#{arch}.tar.gz"
  name "initializ"
  desc "Initializ platform CLI for CI pipelines"
  homepage "https://initializ.ai"

  binary "initializ"
end
