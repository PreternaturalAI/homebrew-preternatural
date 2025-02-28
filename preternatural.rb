class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.33/preternatural.artifactbundle.zip"
  sha256 "75b083fddbd954b33707fde0341ea21b5fa11758c64b065b95bd3370ac1bccfd"
  version "0.1.33"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
