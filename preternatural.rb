class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.87/preternatural.artifactbundle.zip"
  sha256 "5c4b4f65df0cb0784b79b41e3bd4c1bb77b7dec09eb13da43856076507b9a50f"
  version "0.0.87"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
