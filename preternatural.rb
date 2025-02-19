class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.27/preternatural.artifactbundle.zip"
  sha256 "e8dc9f42123fe80e1afb1a5c9f7bb1a67ac1a92a2ab756fbd8a3eb30951a405b"
  version "0.1.27"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
