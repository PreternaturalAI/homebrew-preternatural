class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.73/preternatural.artifactbundle.zip"
  sha256 "2004ee41422edd5b902d324ba9cc8f91c46ccd86e375c7c639998b76fd04c044"
  version "0.0.73"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
