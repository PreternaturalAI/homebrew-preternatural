class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.1/preternatural.artifactbundle.zip"
  sha256 "7bf22d570dd27925e585e11859fbeea327bd9c3f293afc8cbacb0f7dc77a7786"
  version "preternatural-0.1.1"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
