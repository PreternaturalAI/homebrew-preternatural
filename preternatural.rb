class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.7/preternatural.artifactbundle.zip"
  sha256 "cbb1f588fd4c8c6c15b21b986b166c10e0137678032a2ca78bc3e28f9263049d"
  version "0.1.7"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
