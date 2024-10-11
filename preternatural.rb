class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/CLI-release/releases/download/0.0.36/preternatural.artifactbundle.zip"
  sha256 "f329353a0223a6da5b1177d45bef603d0521d49ab9a937e57822017edc823706"
  version "0.0.36"

  def install
    system "unzip", "-o", cached_download
    bin.install "preternatural/bin/preternatural"
  end

  test do
    system "#{bin}/preternatural"
  end
end
