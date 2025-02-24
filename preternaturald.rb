class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.5/preternaturald.artifactbundle.zip"
  sha256 "2f367368c2436e6abfd93288f168cf638bd24a6921897c576bc5c514557b5d63"
  version "0.0.5"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
