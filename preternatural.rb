class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.72/preternatural.artifactbundle.zip"
  sha256 "3d61897a349ae52b3a15ce9aea9e4100a52432eaec208a6657b11e4b2c8f9076"
  version "0.0.72"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
