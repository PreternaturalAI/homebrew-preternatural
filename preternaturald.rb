class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.7/preternaturald.artifactbundle.zip"
  sha256 "898f89f4d381ad9d6bed91980e3b616f39a17b4ea5327ebe2267eb52abc78c34"
  version "0.0.7"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
