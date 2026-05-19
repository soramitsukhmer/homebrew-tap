class SoramitsukhmerGitHooksConfig < Formula
  desc "Configuration files for Soramitsukhmer Git hooks"
  homepage "https://github.com/soramitsukhmer-lab/git-tools"
  url "https://raw.githubusercontent.com/soramitsukhmer-lab/git-tools/0ae82c454464ce8128806eef13901fa23b417ecd/configs/git-hooks.conf"
  version "latest"
  sha256 "eed700af98691dcd5064ef61280cdf7aa58a33a795501692b31aa097d0c926f8"
  license "GPL-3.0-or-later"

  depends_on "soramitsukhmer/tap/git-hook-gitleaks"

  def install
    prefix.install "git-hooks.conf"
  end

  def caveats
    <<~EOS
      The configuration file has been installed to:
        #{prefix}/git-hooks.conf

      To use this configuration, you can add the following line to your ~/.gitconfig or ~/.config/git/config file:
        [include]
          path = #{prefix}/git-hooks.conf
    EOS
  end

  test do
    system "true"
  end
end
