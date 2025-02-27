class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.31/preternatural.artifactbundle.zip"
  sha256 "c16289f8c1e0ffc879447c3a126789fb5349ca76abd915b407897a41e4439d4c"
  version "0.1.31"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
