class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.100/preternatural.artifactbundle.zip"
  sha256 "b28b04fa1cbb699b00c4a5e1af8a66df22ff4ec374f2b03c0cdb8f296552c9fb"
  version "0.0.100"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
