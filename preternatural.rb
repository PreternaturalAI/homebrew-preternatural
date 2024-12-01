class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.74/preternatural.artifactbundle.zip"
  sha256 "4e39d8ac29aadfa62c56f15b39c48d84fca71798099cae2d1e02c5d44f7aa6df"
  version "0.0.74"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
