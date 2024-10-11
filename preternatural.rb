class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.37/preternatural.artifactbundle.zip"
  sha256 "8dc6302880e57b2f0aeb25ceb50f5aabee38b3ceaf530f384432041e89851e90"
  version "0.0.37"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
