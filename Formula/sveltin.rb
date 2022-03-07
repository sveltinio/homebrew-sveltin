# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sveltin < Formula
  desc "A powerful CLI for your next SvelteKit powered static website."
  homepage "https://sveltin.io"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.5.1/sveltin_0.5.1_Darwin-arm64.tar.gz"
      sha256 "ce86b36088c3cac4ea70f6e2de45e15f634f47ff445c0f3fe9dbcfc45af04106"

      def install
        bin.install "sveltin"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.5.1/sveltin_0.5.1_Darwin-x86_64.tar.gz"
      sha256 "0bbbf89b3aab1a2efa68a2b5b833a88b3b683d8e300f29e172e6aaff4c16aaaa"

      def install
        bin.install "sveltin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.5.1/sveltin_0.5.1_Linux-arm64.tar.gz"
      sha256 "3e56321418109d124fdec6607b5788df9f64dcec1eabc40903bf47dfad342200"

      def install
        bin.install "sveltin"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.5.1/sveltin_0.5.1_Linux-x86_64.tar.gz"
      sha256 "42d7b7310ffeb8d521bea656fb214345dacd0e58d5043aa928ab09a72e25b0a6"

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
