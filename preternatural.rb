class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.38/preternatural.artifactbundle.zip"
  sha256 "8822e6a9d49de784874ebee7bf44dd3c9d28333c040aad680f26ccc66bb3350e"
  version "0.0.38"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
