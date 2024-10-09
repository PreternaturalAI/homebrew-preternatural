class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.30/preternatural.artifactbundle.zip"
  sha256 "3a057795fce77aa3b591bcb9332c171aa588dc492768e6e5a1c1c61b552407ab"
  version "0.0.30"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
