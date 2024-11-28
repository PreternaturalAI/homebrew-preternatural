class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.66/preternatural.artifactbundle.zip"
  sha256 "bebc7a8c68edb06a4be9846bff55d8fb01f04421ae8e869eb831b7fa937351fe"
  version "0.0.66"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
