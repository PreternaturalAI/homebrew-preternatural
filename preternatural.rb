class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.18/preternatural.artifactbundle.zip"
  sha256 "1e5aab1c1e61b5a466357a7ca1ce44ae615c3921e467eab25b6625a88b06cf8f"
  version "0.1.18"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
