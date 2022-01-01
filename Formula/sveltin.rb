# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sveltin < Formula
  desc "A powerful CLI for your next SvelteKit powered static website."
  homepage "https://sveltin.io"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.2.1/sveltin_0.2.1_Darwin-arm64.tar.gz"
      sha256 "9122fcb34744f01fb8f0a10c02474849b39c8d1397ba2a7fd18c47a71f7dbbff"

      def install
        bin.install "sveltin"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.2.1/sveltin_0.2.1_Darwin-x86_64.tar.gz"
      sha256 "6c8301243fb018e4955f3d35ca6a37bf52a9cca525e2e173f70b9f6ded92749e"

      def install
        bin.install "sveltin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.2.1/sveltin_0.2.1_Linux-arm64.tar.gz"
      sha256 "064c36c9754102a701b0186c8219a2305a04101290850e7168b425ba2e9222aa"

      def install
        bin.install "sveltin"
      end
    end
    if Hardware::CPU.intel?
      url "http://github.com/sveltinio/sveltin/releases/download/v0.2.1/sveltin_0.2.1_Linux-x86_64.tar.gz"
      sha256 "191e295c74b08f29a467a02b0c0abe1e89135518a740437b6efef6962fe1e0f4"

      def install
        bin.install "sveltin"
      end
    end
  end

  depends_on "git"
  depends_on "node"

  def caveats; <<~EOS
    How to use this binary
  EOS
  end
end
