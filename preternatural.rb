class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.12/preternatural.artifactbundle.zip"
  sha256 "29f48a005740c99274efa99dc8232e5215d7fdcc7f6d41ff695d3d16397e1219"
  version "0.1.12"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
