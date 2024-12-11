class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.97/preternatural.artifactbundle.zip"
  sha256 "7374b03b48764b1f34bfe8dd9bf1720d8e9f4d36c7d84d97ee5924dd9716bac5"
  version "0.0.97"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
