class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.84/preternatural.artifactbundle.zip"
  sha256 "720fc33191b8d5fe35d369b96ef18f62b697e9efc9ebbee344ca96b540fbb266"
  version "0.0.84"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
