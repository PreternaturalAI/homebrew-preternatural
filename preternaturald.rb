class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.4/preternaturald.artifactbundle.zip"
  sha256 "592bf37fb81ef0a8c3d969a86609b051c6a21cea5f1f98423766aa311accdbe9"
  version "0.0.4"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
