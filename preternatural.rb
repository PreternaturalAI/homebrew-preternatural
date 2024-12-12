class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.101/preternatural.artifactbundle.zip"
  sha256 "b23d3303c44430134bc5147134726867acf7e71e4a2f3225659f2002b1feb56f"
  version "0.0.101"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
