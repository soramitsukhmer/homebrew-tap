class GitHookGitleaks < Formula
  desc "Git hook for detecting secrets using Gitleaks"
  homepage "https://github.com/soramitsukhmer-lab/git-tools"
  url "https://github.com/soramitsukhmer-lab/git-tools/blob/04da85b45bf25a1a3aa741a1217a55a528e6f224/bin/git-hook-gitleaks?raw=true"
  version "latest"
  sha256 "64b7adc6a0dca04d3283f26f29d0cdcfaf3d5e5d5827b538bd5466cedf9f3406"
  license "GPL-3.0-or-later"

  depends_on "gitleaks"

  def install
    bin.install "git-hook-gitleaks"
  end

  test do
    system "true"
  end
end
