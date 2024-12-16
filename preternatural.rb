class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.109/preternatural.artifactbundle.zip"
  sha256 "2bdabf8e04ffbdc38a2d045545e20d5322d953f3177bc7b7679cd170231547be"
  version "0.0.109"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
