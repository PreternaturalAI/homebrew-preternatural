class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.28/preternatural.artifactbundle.zip"
  sha256 "508f841c1bcc237f69ba2d9bbdbcd45c7c0f65f830b0f40620aeee141ebabb52"
  version "0.1.28"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
