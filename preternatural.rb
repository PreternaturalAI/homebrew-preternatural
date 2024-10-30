class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.45/preternatural.artifactbundle.zip"
  sha256 "a0f441b838a9ee76d61e78d65294066c7d7984b6ae1f9007f41648442570afe3"
  version "0.0.45"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
