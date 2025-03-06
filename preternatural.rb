class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.36/preternatural.artifactbundle.zip"
  sha256 "fd646f3bcbdb0ac9ccc0e7d3e48df1229d251f3e52696f984076c5ac63962ffb"
  version "0.1.36"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
