class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.2/preternatural.artifactbundle.zip"
  sha256 "aaf2c4f56af9c79656ca7d80c27ad2674db4d0fff18398d9aaf087864b13a01d"
  version "0.1.2"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
