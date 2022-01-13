class Certstrap < Formula
  desc "Tools to bootstrap CAs, certificate requests, and signed certificates"
  homepage "https://github.com/soramitsukhmer/certstrap"
  version "1.3.1"
  url "https://github.com/soramitsukhmer/certstrap/archive/refs/tags/v#{version}.tar.gz"
  sha256 "0fcfc6ccec538fa5f8af1bf60aebbc9f9edda51fc376ee0dfef1ac13684e06c8"
  license "Apache-2.0"
  
  conflicts_with "certstrap"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.version=#{version}", "-trimpath", "-o", bin/"certstrap"
    prefix.install_metafiles
  end

  test do
    system "#{bin}/certstrap", "init", "--common-name", "Homebrew Test CA", "--passphrase", "beerformyhorses"
  end
end
