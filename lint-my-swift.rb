class LintMySwift < Formula
  desc "Lint My Swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/lint-my-swift-0.1.5/lint-my-swift.artifactbundle.zip"
  sha256 "9c2ccf8ffd40bd08271c011d0283b5fbe510e8eef02cb32da12792dc671de12a"
  version "0.1.5"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
