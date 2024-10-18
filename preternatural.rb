class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.42/preternatural.artifactbundle.zip"
  sha256 "d13b3d96e796d1b536ea1793e93f4afd469519f438db8ca205e21dad08093cb4"
  version "0.0.42"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
