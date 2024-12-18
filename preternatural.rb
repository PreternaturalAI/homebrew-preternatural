class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.113/preternatural.artifactbundle.zip"
  sha256 "9ce7be208b891a97ac074a3c59bd2471cf80c15098ecfd6257d15dc9c0356860"
  version "0.0.113"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
