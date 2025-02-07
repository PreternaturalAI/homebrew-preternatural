class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.16/preternatural.artifactbundle.zip"
  sha256 "121ee356cdb644a1bb2164f209dbc52b4aa4456c2d6aa721b8e31ddc47f5d02e"
  version "0.1.16"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
