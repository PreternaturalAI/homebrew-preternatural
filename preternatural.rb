class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.88/preternatural.artifactbundle.zip"
  sha256 "679a1114e20fcb9df0311a6b958aeb4115c723429a8bc1bcecb63870ec81cd44"
  version "0.0.88"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
