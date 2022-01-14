class Certstrap < Formula
  desc "Tools to bootstrap CAs, certificate requests, and signed certificates"
  homepage "https://github.com/soramitsukhmer/certstrap"
  version "1.3.2"
  url "https://github.com/soramitsukhmer/certstrap/archive/refs/tags/v#{version}.tar.gz"
  sha256 "2e89a2606291423d98439f456f25cbec90f30f0156bfc9c2916e5098cc771a1a"
  license "Apache-2.0"
  
  conflicts_with "certstrap"

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.release=#{version}", "-trimpath", "-o", bin/"certstrap"
    prefix.install_metafiles
  end

  test do
    system "#{bin}/certstrap", "init", "--common-name", "Homebrew Test CA", "--passphrase", "beerformyhorses"
  end
end
