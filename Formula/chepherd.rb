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
  version "0.2.0-rc1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/chepherd/chepherd/releases/download/v0.2.0-rc1/chepherd_0.2.0-rc1_darwin_arm64.tar.gz"
      sha256 "4268bdc51030fced3e113eae0cb9b38621e84307c098b922506f578dbfa15505"
    end
    on_intel do
      url "https://github.com/chepherd/chepherd/releases/download/v0.2.0-rc1/chepherd_0.2.0-rc1_darwin_amd64.tar.gz"
      sha256 "e6c5fc1dd5d4338fe7cc9c1a6255b4f2ef635df6dd7b9f62503296914166f8c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/chepherd/chepherd/releases/download/v0.2.0-rc1/chepherd_0.2.0-rc1_linux_arm64.tar.gz"
      sha256 "948cb9c83ad9cc4d5a5357227612a6a5d8539686362fe3db17e633531109ef7a"
    end
    on_intel do
      url "https://github.com/chepherd/chepherd/releases/download/v0.2.0-rc1/chepherd_0.2.0-rc1_linux_amd64.tar.gz"
      sha256 "2b216fef7f7ed309b4683ab7f46593d36f3f2428f21d7e46dbc237877d9f70d3"
    end
  end

  def install
    bin.install "chepherd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chepherd version")
  end
end
