class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.111/preternatural.artifactbundle.zip"
  sha256 "99a42ba974036d6a25100b17d60866fdad882d1650ca7550eb911e4d2023713b"
  version "0.0.111"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
