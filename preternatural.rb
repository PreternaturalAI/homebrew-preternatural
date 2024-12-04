class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.82/preternatural.artifactbundle.zip"
  sha256 "3c24ef0403c09193dba82b9ad6a02b249cfae189df57f53e4e3719316d795878"
  version "0.0.82"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
