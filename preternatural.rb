class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/command-line-tool-releases/releases/download/0.0.96/preternatural.artifactbundle.zip"
  sha256 "07fab6f3269683d503b74e5a6f6a7e162bfe301e15d81871abcb57adc95798de"
  version "0.0.96"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
