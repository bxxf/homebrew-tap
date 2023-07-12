# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tgen < Formula
  desc "Simple tool for creating CSV target files"
  homepage "https://github.com/bxxf/target-gen"
  version "0.0.4"

  on_macos do
    url "https://github.com/bxxf/target-gen/releases/download/v0.0.4/target-gen_0.0.4_darwin_all.tar.gz"
    sha256 "2668f65b0f071a893c5e9d21212b8820db21bd900728b9b44d9fbe890c414e84"

    def install
      bin.install "tgen"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bxxf/target-gen/releases/download/v0.0.4/target-gen_0.0.4_linux_arm64.tar.gz"
      sha256 "1757a38b9e5d02e48b4644d92e4546c568e123a6182f3f83b49b53b538fd454e"

      def install
        bin.install "tgen"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bxxf/target-gen/releases/download/v0.0.4/target-gen_0.0.4_linux_amd64.tar.gz"
      sha256 "64c39fe742014be3ff03f40021ada171014d1096fc4e4d8fc4b1e8bf8efb3d09"

      def install
        bin.install "tgen"
      end
    end
  end

  test do
    system "#{bin}/tgen"
  end
end
