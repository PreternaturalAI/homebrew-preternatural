class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.79/preternatural.artifactbundle.zip"
  sha256 "bb7ef886bb5c6aa3c7c0c690572e6195935d41a54500b1ac4227c46954af0eca"
  version "0.0.79"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
