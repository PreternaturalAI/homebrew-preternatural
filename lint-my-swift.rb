class LintMySwift < Formula
  desc "Lint My Swift CLI Tool"
  homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
  url "https://github.com/PreternaturalAI/lint-my-swift-releases/releases/download/0.0.2/lint-my-swift.artifactbundle.zip"
  sha256 "c1772884d61d23fc79370404084b1304c4cb126d4cc413e3bcc989025ef630e9"
  version "0.0.2"

  def install
    system "unzip", "-o", cached_download
    bin.install "lint-my-swift/bin/lint-my-swift"
  end

  test do
    system "#{bin}/lint-my-swift"
  end
end
