# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tgen < Formula
  desc "Simple tool for creating CSV target files"
  homepage "https://github.com/bxxf/tgen"
  version "0.1.0"

  on_macos do
    url "https://github.com/bxxf/tgen/releases/download/0.1.0/tgen_0.1.0_darwin_all.tar.gz"
    sha256 "22c5a03850bd16da682143d7e21664ca9a02bcbb66ed07a779a687a6187dc25e"

    def install
      bin.install "tgen"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bxxf/tgen/releases/download/0.1.0/tgen_0.1.0_linux_arm64.tar.gz"
      sha256 "4e0e5a4aea76dd88fbb0055ec0a687138eeb0a65b3d8c7bb0f8c4ef54311c245"

      def install
        bin.install "tgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bxxf/tgen/releases/download/0.1.0/tgen_0.1.0_linux_amd64.tar.gz"
      sha256 "551c2d45b79c8f127be62e710f38cf093752f470d09ddedfa23e9d62d80d191c"

      def install
        bin.install "tgen"
      end
    end
  end

  test do
    system "#{bin}/tgen"
  end
end
