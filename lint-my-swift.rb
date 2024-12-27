class LintMySwift < Formula
  desc "Lint My Swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/lint-my-swift-0.1.4/lint-my-swift.artifactbundle.zip"
  sha256 "4dd71dc3604879d30648ac97e1368132dcb29ebe7a2b0d0b4258b79e4c7fb7dd"
  version "0.1.4"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
