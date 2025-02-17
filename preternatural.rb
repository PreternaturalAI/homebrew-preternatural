class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.24/preternatural.artifactbundle.zip"
  sha256 "5e3ca4ac59d500a0d4346e05a15ac331e33af51af7ecaeed51a30df030da4565"
  version "0.1.24"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
