class Preternaturald < Formula
  desc "Preternaturald CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternaturald-0.0.9/preternaturald.artifactbundle.zip"
  sha256 "03a0d60c263c761c0f02eb5994691159fbcc107004bb0aea3a6bd7e07ae7ef9e"
  version "0.0.9"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternaturald/bin/preternaturald"
  end

  test do
    system "#{bin}/preternaturald"
  end
end
