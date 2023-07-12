# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tgen < Formula
  desc "Simple tool for creating CSV target files"
  homepage "https://github.com/bxxf/tgen"
  version "0.1.12"

  on_macos do
    url "https://github.com/bxxf/tgen/releases/download/v0.1.12/tgen_0.1.12_darwin_all.tar.gz"
    sha256 "ff58fc90db63637a4df7926c8ae3c3284ea8b02cd76118247f90d4daeaded8a2"

    def install
      bin.install "tgen"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bxxf/tgen/releases/download/v0.1.12/tgen_0.1.12_linux_amd64.tar.gz"
      sha256 "6a620a97298b73b7174f48bcfdf7a3308af2ed98e53f8f3a532aaf4d3d744389"

      def install
        bin.install "tgen"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bxxf/tgen/releases/download/v0.1.12/tgen_0.1.12_linux_arm64.tar.gz"
      sha256 "900b6cca7e0fb695efcbd5831944a62ba721dc2d5a8c68ce2b002f1363482267"

      def install
        bin.install "tgen"
      end
    end
  end

  test do
    system "#{bin}/tgen"
  end
end
