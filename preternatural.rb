class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.20/preternatural.artifactbundle.zip"
  sha256 "8cbb4997dc490f0c6a94495850969bd6277fbc41c699609ceb16aea6898783d1"
  version "0.1.20"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
