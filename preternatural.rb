class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.35/preternatural.artifactbundle.zip"
  sha256 "dfae662d17701f03331b9f618ea52f4776061ea821bd7b12541e937d06ac6d0a"
  version "0.0.35"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
