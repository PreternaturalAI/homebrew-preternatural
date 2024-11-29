class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.68/preternatural.artifactbundle.zip"
  sha256 "685848e1efbb5b51bd4d0caadd311ee276400329b6ec817f820e132864bcf46c"
  version "0.0.68"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
