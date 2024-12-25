class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.121/preternatural.artifactbundle.zip"
  sha256 "73fc66a73a6270181020c18b93d35b37d9990747c9f0644dfea80c358fdd6ff6"
  version "0.0.121"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
