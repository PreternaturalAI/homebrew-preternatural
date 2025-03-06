class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.35/preternatural.artifactbundle.zip"
  sha256 "9f0ddc435f92a92090e64d048e0e03dd3d84828239bb685b539d90dd35d50598"
  version "0.1.35"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
