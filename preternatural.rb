class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.76/preternatural.artifactbundle.zip"
  sha256 "c80ec211b128ce3a3c0e752e40a71257fb6b8e1da5135a09932c9a6c875846a7"
  version "0.0.76"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
