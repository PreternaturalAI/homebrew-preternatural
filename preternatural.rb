class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.117/preternatural.artifactbundle.zip"
  sha256 "e8b6cc179e02e6a3f90b3da99d586a575c0da2183b9f18d7ca563a9af0bfdea4"
  version "0.0.117"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
