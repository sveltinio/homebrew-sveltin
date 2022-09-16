# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sveltin < Formula
  desc "A powerful CLI for your next SvelteKit powered static website."
  homepage "https://sveltin.io"
  version "0.10.0"
  license "Apache-2.0"

  depends_on "git"
  depends_on "node"

  on_macos do
    if Hardware::CPU.arm?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.10.0/sveltin_0.10.0_Darwin-arm64.tar.gz"
      sha256 "4be158ef4830949c7d8e12ea7128d994592fc1d3045fa203a625981330263b5e"

      def install
        bin.install "sveltin"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.10.0/sveltin_0.10.0_Darwin-x86_64.tar.gz"
      sha256 "666ff109634d5b705613954d67bf3b80413769e5a17d9fb3688340322f57e89a"

      def install
        bin.install "sveltin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.10.0/sveltin_0.10.0_Linux-x86_64.tar.gz"
      sha256 "dd01ee4197f9db71d20509794a9846adfa77a3e589de35b5962d4eff6bb5f66e"

      def install
        bin.install "sveltin"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.10.0/sveltin_0.10.0_Linux-arm64.tar.gz"
      sha256 "5681002a90fc178b45654aa28b83b318743dc1fee4d31321348606dc785b8c10"

      def install
        bin.install "sveltin"
      end
    end
  end

  def caveats
    <<~EOS
      To get started run: `sveltin -h` or visit https://docs.sveltin.io
    EOS
  end
end
