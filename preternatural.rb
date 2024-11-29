class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.70/preternatural.artifactbundle.zip"
  sha256 "08eec1e8d33dc6ef2c89d14dc9c2c5b2f025c788f328afc5a27e17c2a3b7f9df"
  version "0.0.70"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
