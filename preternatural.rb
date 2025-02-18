class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.26/preternatural.artifactbundle.zip"
  sha256 "dfca76d5747082e2bff920a414b01380eff44ec7fad7c3aa00cb165fdcc0cf52"
  version "0.1.26"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
