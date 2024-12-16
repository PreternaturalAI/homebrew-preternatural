class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.107/preternatural.artifactbundle.zip"
  sha256 "acd14cd859b85c2af806eab48807c6437758da665c789f083d57c022a82f3748"
  version "0.0.107"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
