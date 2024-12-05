class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.85/preternatural.artifactbundle.zip"
  sha256 "b483b919c1fcacd4bdd1e1a77e479d6a5bcf8a7e57241265ba12d2b1d9d837e6"
  version "0.0.85"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
