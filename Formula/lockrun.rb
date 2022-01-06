class Lockrun < Formula
  desc "Run cron jobs with overrun protection"
  homepage "http://unixwiz.net/tools/lockrun.html"
  url "http://unixwiz.net/tools/lockrun.c"
  version "1.1.3"
  sha256 "b846c1c50f9994c3ebeba89e9c2cd1fdaba777e5e19f3e65bde0da4f0beed03d"

  def install
    system ENV.cc, ENV.cflags, "lockrun.c", "-o", "lockrun"
    bin.install "lockrun"
  end

  test do
    system "#{bin}/lockrun", "--version"
  end
end
