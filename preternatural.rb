class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.31/preternatural.artifactbundle.zip"
  sha256 "98b24ab0bbc0d1d2b13b34183ce9a59909a260557dd5e024debbcb32c48e5a00"
  version "0.0.31"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
