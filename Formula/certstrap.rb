class Certstrap < Formula
  desc "Tools to bootstrap CAs, certificate requests, and signed certificates"
  homepage "https://github.com/soramitsukhmer/certstrap"
  version "1.3.0"
  url "https://github.com/soramitsukhmer/certstrap/archive/refs/tags/v#{version}.tar.gz"
  sha256 "afc781c0ad0412bef29b8e48997b375be663b306cbd4e8c1c82f7464fe8e0ca6"
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
