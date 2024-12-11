class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.98/preternatural.artifactbundle.zip"
  sha256 "60f28f336325575abd591d579c9a64c7a3fd82a6e1a995bcddbf4abbd80c8393"
  version "0.0.98"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
