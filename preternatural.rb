class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.32/preternatural.artifactbundle.zip"
  sha256 "6bea74888d8c5b40b22b24fe625d1a67669f1e3c557b5f4b5b1f0d725e264268"
  version "0.1.32"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
