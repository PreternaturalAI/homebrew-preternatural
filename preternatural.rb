class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.108/preternatural.artifactbundle.zip"
  sha256 "ba7f93049bc7308f76e690e5bacbc10b83005bd28f2761991991fbdd6f505c31"
  version "0.0.108"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
