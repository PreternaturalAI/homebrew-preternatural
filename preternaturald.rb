class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.11/preternaturald.artifactbundle.zip"
  sha256 "50043663a40c96664f1657a13a9c3d5f895f23b3512acd84ba3f2986e4ef89bd"
  version "0.0.11"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
