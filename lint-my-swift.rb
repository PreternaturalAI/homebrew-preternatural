class LintMySwift < Formula
  desc "Lint My Swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/lint-my-swift-releases/releases/download/0.0.0/lint-my-swift.artifactbundle.zip"
  sha256 ""
  version "0.0.0"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
