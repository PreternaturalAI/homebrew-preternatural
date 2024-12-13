class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.103/preternatural.artifactbundle.zip"
  sha256 "6dce1f7484fa186eadab3eb273cf804e9b5190edeb1040caa62e821a7218d026"
  version "0.0.103"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
