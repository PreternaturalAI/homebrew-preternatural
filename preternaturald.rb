class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.13/preternaturald.artifactbundle.zip"
  sha256 "e4a15e5d4b262e7a869e84c3afff91ddb7cec16b73e05ba042a6055d7b39ee2b"
  version "0.0.13"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
