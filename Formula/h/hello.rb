class Hello < Formula
  desc "GNU Hello says hello to the world"
  homepage "https://www.gnu.org/software/hello/"
  url "https://ftp.gnu.org/gnu/hello/hello-2.12.1.tar.gz"
  sha256 "8d99113ddaa05d2efac5e1bcdf01dbfe46f18d9efec2949165842d7beedc9f43"
  license "GPL-3.0-or-later"

  def install
    system "./configure", "--disable-disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    assert_match "Hello, world!", shell_output("#{bin}/hello")
  end
end