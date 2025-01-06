class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.8/preternatural.artifactbundle.zip"
  sha256 "f28370c2df7c7d5c5e838e286b19c63b64e4bdefd5eb62d48a1cb9f4d8c9d064"
  version "0.1.8"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
