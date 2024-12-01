class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.71/preternatural.artifactbundle.zip"
  sha256 "e82240d22afe276bd249359c0f52c30dfdebe6e5c5e184bb2f5b1c3f195810e2"
  version "0.0.71"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
