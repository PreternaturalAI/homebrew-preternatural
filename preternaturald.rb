class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.8/preternaturald.artifactbundle.zip"
  sha256 "c56802389fca7b6bbeacb10f29e4f654056e2a4f4214c7405e9f1cc0f6eba763"
  version "0.0.8"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
