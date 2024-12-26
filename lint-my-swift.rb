class LintMySwift < Formula
  desc "Lint My Swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/lint-my-swift-0.1.1/lint-my-swift.artifactbundle.zip"
  sha256 "91212ab7a19aba811ff731796739715991ed99818ba16555419a701e9148c07f"
  version "lint-my-swift-0.1.1"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
