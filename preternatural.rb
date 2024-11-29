class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.69/preternatural.artifactbundle.zip"
  sha256 "c33167c30d2ab86c70e4b1a6ead3f5e5ee4f1f3e452134d8ef0876be34a652d5"
  version "0.0.69"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
