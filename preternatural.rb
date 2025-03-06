class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.34/preternatural.artifactbundle.zip"
  sha256 "70988f3ded27f78e0435096a81db0e5f14dff10a6bae3ae935ca4b89cb6de2a0"
  version "0.1.34"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
