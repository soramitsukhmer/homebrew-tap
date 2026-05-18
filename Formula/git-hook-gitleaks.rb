class GitHookGitleaks < Formula
  desc "Git hook for detecting secrets using Gitleaks"
  homepage "https://github.com/socheatsok78-lab/githooks"
  url "https://github.com/socheatsok78-lab/githooks/blob/b21a37ea08aa4a95b48ee0ee1dbee4342966cb73/bin/git-hook-gitleaks"
  version "latest"
  sha256 "6572f64d1e80831320d6b21b1b9ef882f9d8ddf4a7179d66dd7efa7e42e40995"
  license "GPL-3.0-or-later"

  depends_on "gitleaks"

  def install
    bin.install "git-hook-gitleaks"
  end

  test do
    system "true"
  end
end
