class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.4/preternatural.artifactbundle.zip"
  sha256 "8209850fa966ed8bb8c1a1f2a49befc5770bd2f0ef9937f9a56fc0eb464acb8b"
  version "0.1.4"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
