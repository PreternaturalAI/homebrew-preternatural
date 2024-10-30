class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.43/preternatural.artifactbundle.zip"
  sha256 "db2144ed8474f374a0a84aeac9146a4a66ab366a8f4e52d66fc150ce28f05ee1"
  version "0.0.43"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
