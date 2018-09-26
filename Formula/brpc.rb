class Brpc < Formula
  desc "Industrial-grade RPC framework used throughout Baidu, with 1,000,000+ instances and thousands kinds of services."
  homepage "https://github.com/brpc/brpc"
  url "https://github.com/brpc/brpc/archive/a9e954879fda1c63f0f772b47d87943129e5af1f.zip"
  sha256 "0d2760022811664ad473bb7f11709116fd32d89330c49ac263b034e8866b1902"
  head "https://github.com/brpc/brpc.git"
  version "0.9.git20180926"

  depends_on "leveldb"
  depends_on "protobuf"
  depends_on "glog"
  depends_on "gflags"
  depends_on "thrift"
  depends_on "openssl"

  depends_on :macos => :sierra

  def install
    mkdir "bulid" do
      system "cmake", "..", "-DWITH_THRIFT=1", "-DWITH_GLOG=1", *std_cmake_args
      system "make", "install"
    end
  end
end


