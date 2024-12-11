class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.92/preternatural.artifactbundle.zip"
  sha256 "2c0d5108ea17c2ef81386038f7f718cec02d268dcb8cbf2b724b64ffcb76b53f"
  version "0.0.92"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
