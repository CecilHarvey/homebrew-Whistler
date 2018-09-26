class Brpc < Formula
  desc "Industrial-grade RPC framework used throughout Baidu, with 1,000,000+ instances and thousands kinds of services."
  homepage "https://github.com/brpc/brpc"
  url "https://github.com/brpc/brpc/archive/a9e954879fda1c63f0f772b47d87943129e5af1f.tar.gz"
  sha256 "befdc1f5a8789ae75f441062324220d7589b2e1e7071b4370ef09901e5fbd04e"
  head "https://github.com/brpc/brpc.git"
  version "0.9.git20180926"

  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "leveldb"
  depends_on "protobuf"
  depends_on "gflags"
  depends_on "openssl"

  depends_on :macos => :sierra

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
