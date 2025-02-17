class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.1/preternaturald.artifactbundle.zip"
  sha256 "d28c5230701bb318034312da6b4baa21c87bf89c9e96672aba2b9e8ef8db066a"
  version "0.0.1"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
