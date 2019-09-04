class Brpc < Formula
  desc "Industrial-grade RPC framework used throughout Baidu, with 1,000,000+ instances and thousands kinds of services."
  homepage "https://github.com/apache/incubator-brpc"
  url "https://github.com/apache/incubator-brpc/archive/d4fa4e87bee955dea2d9a1bb0090ad48b068e9a3.tar.gz"
  sha256 "e82d5d9e548e44c336b0a2df11dc70d073edf6c080680fe411f15d991c884347"
  head "https://github.com/apache/incubator-brpc.git"
  version "0.9.git20190904"

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
