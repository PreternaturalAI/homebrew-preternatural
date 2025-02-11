class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.23/preternatural.artifactbundle.zip"
  sha256 "2935d71d09a828c3ed69832fe51b8bd70b2d099c7bca7d026220ec29fe2c379f"
  version "0.1.23"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
