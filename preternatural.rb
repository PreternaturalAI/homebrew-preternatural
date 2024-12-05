class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.83/preternatural.artifactbundle.zip"
  sha256 "219742260e1568f959e0f3cf4905095ea3b77f11ec9ff30862c20fda9416ec91"
  version "0.0.83"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
