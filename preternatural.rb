class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.40/preternatural.artifactbundle.zip"
  sha256 "b27bcc5c2bcec5830b872de9ec25c95ed4e422bcd75f003ce1ab4dae3475c4f3"
  version "0.0.40"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
