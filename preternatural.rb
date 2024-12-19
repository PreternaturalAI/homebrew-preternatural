class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.116/preternatural.artifactbundle.zip"
  sha256 "dbd9b0604f74d22a76acb9b15d85f2572c5c4bc52ffa3392b9b106ff38eadd6a"
  version "0.0.116"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
