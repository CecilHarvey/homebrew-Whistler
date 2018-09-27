class Zydis < Formula
  desc "Fast and lightweight x86/x86-64 disassembler library."
  homepage "https://github.com/zyantific/zydis"
  url "https://github.com/zyantific/zydis/archive/v2.0.2.tar.gz"
  sha256 "bd711102a5a30096562a7cb60bafbc9c4a2441ce5463a59f4d16f2dd73f9fb72"
  head "https://github.com/zyantific/zydis.git"
  version "0.2.2"

  depends_on "cmake" => :build
  depends_on :macos => :sierra

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
