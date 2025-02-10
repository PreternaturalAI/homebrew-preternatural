class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.22/preternatural.artifactbundle.zip"
  sha256 "4bae0dc6a747c62baf566bf2d4be20baee2cfcba67d4a1225c9e1a54eba96657"
  version "0.1.22"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
