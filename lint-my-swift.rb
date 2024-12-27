class LintMySwift < Formula
  desc "Lint My Swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/lint-my-swift-0.1.3/lint-my-swift.artifactbundle.zip"
  sha256 "43de45a2aa9adacab40ebdee5e54d4dfcec514ec85de7c0e8c491c5649df1772"
  version "0.1.3"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
