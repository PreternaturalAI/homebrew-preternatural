class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.104/preternatural.artifactbundle.zip"
  sha256 "cffd6a66ee247533b1ebaa6bd99c5bdb513a4390ca68143b9d49025cac0e51e7"
  version "0.0.104"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
