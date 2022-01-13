class Certstrap < Formula
  desc "Tools to bootstrap CAs, certificate requests, and signed certificates"
  homepage "https://github.com/soramitsukhmer/certstrap"
  url "https://github.com/soramitsukhmer/certstrap/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "90fb1d55c70c760b7542ba4bd6b2341dc2128e729d2c151c4b11cd449595d087"
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
