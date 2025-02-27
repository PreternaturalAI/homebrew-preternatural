class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.6/preternaturald.artifactbundle.zip"
  sha256 "d96261a573bdf4495ec216f3e85d4525de3e2182189462a8bfaec8b8aa3d1750"
  version "0.0.6"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
