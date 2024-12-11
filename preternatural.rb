class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.90/preternatural.artifactbundle.zip"
  sha256 "d602b46658d61f4da55346b5c867b23b2e5d947090fa5cb94e3eb189f23dcbac"
  version "0.0.90"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
