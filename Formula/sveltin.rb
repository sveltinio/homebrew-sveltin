# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sveltin < Formula
  desc "A powerful CLI for your next SvelteKit powered static website."
  homepage "https://sveltin.io"
  version "0.8.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.8.3/sveltin_0.8.3_Darwin-x86_64.tar.gz"
      sha256 "a418f20b8c93354cb310582ccaf691bb5d0d5fc4e231398cdef234eff974579e"

      def install
        bin.install "sveltin"
      end
    end
    if Hardware::CPU.arm?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.8.3/sveltin_0.8.3_Darwin-arm64.tar.gz"
      sha256 "d74f2c7b27be3664c8bd17021e9f8c99ca5db0085c2431a4f66421ce6cdbb137"

      def install
        bin.install "sveltin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.8.3/sveltin_0.8.3_Linux-x86_64.tar.gz"
      sha256 "820de3251c78182b538388bbbf025f0ddfa058143eb008e79db4fdbdc0389cd8"

      def install
        bin.install "sveltin"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.8.3/sveltin_0.8.3_Linux-arm64.tar.gz"
      sha256 "51d9df5825f0b3a36c0180f230401a1f4a19525b1b8e010807a5b84213ab48b8"

      def install
        bin.install "sveltin"
      end
    end
  end

  depends_on "git"
  depends_on "node"

  def caveats; <<~EOS
    To get started run: `sveltin -h` or visit https://docs.sveltin.io
  EOS
  end
end
