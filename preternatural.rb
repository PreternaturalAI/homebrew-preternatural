class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.37/preternatural.artifactbundle.zip"
  sha256 "80a42744e4af49a7dbd2583901c5a9b888baa8919d7133bff448ae8092d05cd1"
  version "0.1.37"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
