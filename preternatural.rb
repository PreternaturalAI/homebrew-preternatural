class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.33/preternatural.artifactbundle.zip"
  sha256 "1c193ed4601f6a091ac96edb10475abbb6e0ed9b9f295ac7329f339890d617eb"
  version "0.0.33"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
