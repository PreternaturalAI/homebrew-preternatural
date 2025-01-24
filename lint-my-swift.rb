class LintMySwift < Formula
  desc "Lint My Swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/lint-my-swift-0.1.7/lint-my-swift.artifactbundle.zip"
  sha256 "8f04e5b22a4880cd4d76109c31d282449d3a1c486ea83c501d44bf2918b684ab"
  version "0.1.7"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
