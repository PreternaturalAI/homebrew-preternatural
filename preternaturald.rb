class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.3/preternaturald.artifactbundle.zip"
  sha256 "053983bc7da85591fde52523d9d1657c33f30d821d3537878a8a169b474bbf88"
  version "0.0.3"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
