class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.81/preternatural.artifactbundle.zip"
  sha256 "c4b0e07d4e4dce15aff6f66345c9d565cf8947edbf696fe437cb7129168b06ee"
  version "0.0.81"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
