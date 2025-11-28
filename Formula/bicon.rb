class Bicon < Formula
  desc "Bicon for macOS — bidirectional console support"
  homepage "https://github.com/uidops/bicon-macos"
  url "https://github.com/uidops/bicon-macos/archive/refs/heads/master.tar.gz"
  version "HEAD"
  sha256 "cab1b4db323e18898004e6d0a8365f1b62e43e98b3381e5405fcb3de954ce077"
  license "GPL-2.0-or-later"

  # Dependencies required to run autogen.sh + build
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool"  => :build
  depends_on "pkg-config" => :build

  # Libraries used by bicon
  depends_on "freetype"
  depends_on "gettext"
  depends_on "fribidi"

  # HEAD version for convenience
  head "https://github.com/uidops/bicon-macos.git", branch: "master"

  def install
    # In case glibtoolize is needed instead of libtoolize
    ENV["LIBTOOLIZE"] = "glibtoolize"

    system "./autogen.sh"
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    # Simple version check if binary exists
    assert_match "bicon", shell_output("#{bin}/bicon --help 2>&1")
  end
end
