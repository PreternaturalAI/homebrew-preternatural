class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.39/preternatural.artifactbundle.zip"
  sha256 "a1a589349601d78a123a4e2e817eb6be112de80cae95675d192fabb03c143690"
  version "0.0.39"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
