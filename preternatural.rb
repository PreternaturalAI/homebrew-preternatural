class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.120/preternatural.artifactbundle.zip"
  sha256 "a484d21a0649bf8972c09e9436f89afda412c2533607242ca5ab3e50e139e680"
  version "0.0.120"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
