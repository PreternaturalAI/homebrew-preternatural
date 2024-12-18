class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.112/preternatural.artifactbundle.zip"
  sha256 "7efcd640cf360c8c46f9df40d7d6ec20dc6c0f1131d4988bf4522bbe1c25c40a"
  version "0.0.112"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
