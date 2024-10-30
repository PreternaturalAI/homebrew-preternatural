class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.44/preternatural.artifactbundle.zip"
  sha256 "3fe9a8daa17549cb2cdc969478076214a0f8da82d68242fea99f0ac058b7055c"
  version "0.0.44"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
