class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.10/preternatural.artifactbundle.zip"
  sha256 "4b4270aaae7c7f6414f7a42f07e4975a74fab113d88203627341b1b1ccb9c0e2"
  version "0.1.10"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
