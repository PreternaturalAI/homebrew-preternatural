class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.6/preternatural.artifactbundle.zip"
  sha256 "6abc9c9b929e5840e453e5d861623c44809e9d9c02ce8961a9c5ae2ed906b18f"
  version "0.1.6"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
