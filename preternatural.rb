class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.80/preternatural.artifactbundle.zip"
  sha256 "133fa99570de3011087163f1b7c39fdf8937f1626ab5fe3eaa7241502e75a1b1"
  version "0.0.80"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
