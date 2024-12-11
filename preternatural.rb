class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.91/preternatural.artifactbundle.zip"
  sha256 "8a2d4d4ebc667323fd64068fd02ec12520e2706f0c3ff6724978ac118e3b01b0"
  version "0.0.91"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
