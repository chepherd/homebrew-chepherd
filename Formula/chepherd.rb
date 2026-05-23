# typed: false
# frozen_string_literal: true

# Homebrew formula for chepherd — TUI supervisor for parallel AI coding agents.
# https://chepherd.org · https://github.com/chepherd/chepherd
#
# Install:
#   brew tap chepherd/chepherd
#   brew install chepherd
class Chepherd < Formula
  desc "TUI supervisor for parallel AI coding agents"
  homepage "https://chepherd.org"
  version "0.2.0-beta"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chepherd/chepherd/releases/download/v0.2.0-beta/chepherd_0.2.0-beta_darwin_arm64.tar.gz"
      sha256 "3ae7f722d08940d7602bd83d36123b3720f1d8c1be0d054db5c83b1fc1a6f4df"
    end
    on_intel do
      url "https://github.com/chepherd/chepherd/releases/download/v0.2.0-beta/chepherd_0.2.0-beta_darwin_amd64.tar.gz"
      sha256 "3261ee5b1426e66863fdc4109dadd44e462d2a311e9a248a0c163e725fb78be6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chepherd/chepherd/releases/download/v0.2.0-beta/chepherd_0.2.0-beta_linux_arm64.tar.gz"
      sha256 "c9cd40614a33935eacacc8491fdef7d0dc526f447bf35ba14793b9b8782435e7"
    end
    on_intel do
      url "https://github.com/chepherd/chepherd/releases/download/v0.2.0-beta/chepherd_0.2.0-beta_linux_amd64.tar.gz"
      sha256 "79858e7923fe5f7bafaa6eaa237f71b3db39bb87b2b3831d3bbbf56620256ec7"
    end
  end

  def install
    bin.install "chepherd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chepherd version")
  end
end
