class LintMySwift < Formula
  desc "Lint My Swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/lint-my-swift-0.1.2/lint-my-swift.artifactbundle.zip"
  sha256 "a760ba4a8f16ccecc6019171597075fba9e0de83f18bb152439f660f2fa9caba"
  version "0.1.2"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
