class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.86/preternatural.artifactbundle.zip"
  sha256 "9d52eadefbbb5958c1d7bb36309daa6d1bd9d411e161eaab1dfdaa06a44eb86c"
  version "0.0.86"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
