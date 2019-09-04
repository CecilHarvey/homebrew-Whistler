class Netmaj < Formula
  desc "Network Mahjong game."
  homepage "https://github.com/CecilHarvey/netmaj"
  url "https://github.com/CecilHarvey/netmaj/archive/50ab9a5d7f34c739daa5b742972692e7656c02ad.tar.gz"
  sha256 "1fb79bb85d2c35a7845348aed3dca249ef2874811f8306c294bc44f615bb3764"
  head "https://github.com/CecilHarvey/netmaj.git"
  version "0.9.git20190904"

  depends_on :x11

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
