class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.9/preternatural.artifactbundle.zip"
  sha256 "840fe7b54dea658c49ab7fcd50c7d22a02ae9aa46d14c1281ae579caed7ff965"
  version "0.1.9"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
