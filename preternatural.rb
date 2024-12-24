class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.119/preternatural.artifactbundle.zip"
  sha256 "34226ad610baac566f3b932867d5aeb99e9e7dd008623a81a66a1f4b0bda011c"
  version "0.0.119"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
