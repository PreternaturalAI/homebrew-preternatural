class LintMySwift < Formula
  desc "Lint My Swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/lint-my-swift-0.1.6/lint-my-swift.artifactbundle.zip"
  sha256 "4e66b6cd23068ec165959d565b54e8f7dc712fe8d7aef3325c49213004b7c3a6"
  version "0.1.6"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
