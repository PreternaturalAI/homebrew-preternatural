class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.67/preternatural.artifactbundle.zip"
  sha256 "9e10dbea126b52d9121cf3b5a6b63ecaa23b9748f85ef3129f8e6e70e2a80f6a"
  version "0.0.67"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
