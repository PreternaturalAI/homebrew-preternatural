class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.32/preternatural.artifactbundle.zip"
  sha256 "405979661354949b5b6f5d08b545d4f8a0359bdcadf026abe3e25c929fcfc6f4"
  version "0.0.32"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
