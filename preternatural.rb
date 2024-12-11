class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.93/preternatural.artifactbundle.zip"
  sha256 "8e4482a82127a6ca15f594bf39c61e0cda15fe4ac64de34e53991ef030250e88"
  version "0.0.93"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
