class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.89/preternatural.artifactbundle.zip"
  sha256 "1eabd6a5f313275460f06e8a5783c8532892a9b8c1428222c0e3ea3630948662"
  version "0.0.89"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
