class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.118/preternatural.artifactbundle.zip"
  sha256 "b4334774bcbf60cc0efe7c024d524eae4bbbfc53a8d995e9399e4827515d12d0"
  version "0.0.118"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
