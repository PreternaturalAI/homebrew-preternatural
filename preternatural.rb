class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.29/preternatural.artifactbundle.zip"
  sha256 "9b311dca5c38850300509fa13a8d216c2a71443a8492e57eb8b082ce9a711e60"
  version "0.1.29"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
