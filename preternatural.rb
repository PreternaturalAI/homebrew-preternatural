class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.11/preternatural.artifactbundle.zip"
  sha256 "5d7296189c94f6d8aeab8ac613527d8dddbb3bcb921c18793afe97b62ee7dbf6"
  version "0.1.11"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
