class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.94/preternatural.artifactbundle.zip"
  sha256 "86fe827f9fd14cf696d5284bfdb466d83f184919cbb068d09ee6669ed1cb4836"
  version "0.0.94"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
