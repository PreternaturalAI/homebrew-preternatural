class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.115/preternatural.artifactbundle.zip"
  sha256 "7f5769774ca93b1e12ffe44c01f3f9e7818a11a2136017f0516aa9f09038322c"
  version "0.0.115"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
