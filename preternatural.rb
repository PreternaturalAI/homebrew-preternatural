class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.41/preternatural.artifactbundle.zip"
  sha256 "845bec51215fc449c6615ff49d194152eb7f7251b0942283edd1a05d326cab28"
  version "0.0.41"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
