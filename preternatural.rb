class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.78/preternatural.artifactbundle.zip"
  sha256 "0395dd814b9b6cede3eaa7d67894f6b031943ec324c538d917177a60566366ed"
  version "0.0.78"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
