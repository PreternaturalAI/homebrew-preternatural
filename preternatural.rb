class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.75/preternatural.artifactbundle.zip"
  sha256 "913f63b0b3cf17039d299446837f2126f749b17ede8396c69ab080d2ed58fa5f"
  version "0.0.75"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
