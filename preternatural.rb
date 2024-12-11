class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.99/preternatural.artifactbundle.zip"
  sha256 "d05b714b3f3f07aaae3b2fe65cf7a63788f0e4f3d694bdda5a465908ad440b5c"
  version "0.0.99"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
