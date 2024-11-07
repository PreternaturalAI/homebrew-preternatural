class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.54/preternatural.artifactbundle.zip"
  sha256 "b56699ca445c8806d3bbaf6957dd894d59881a0101cac65a43c151b00cbdf566"
  version "0.0.54"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
