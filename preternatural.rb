class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.95/preternatural.artifactbundle.zip"
  sha256 "711f1ee92a2ef6185caeb68e89458ea7c228ff19fe53ac53ebbf1bcf3507ccfd"
  version "0.0.95"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
