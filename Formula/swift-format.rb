class SwiftFormat < Formula
  desc "Formatting technology for Swift source code"
  homepage "https://github.com/swiftlang/swift-format"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/swift-format-6.3.3/swift-format.zip"
  sha256 "2389ce9b8ec99d2b0b438fef9c0dba535b6491d6b1993074e335c43f92bf3cb7"
  license "Apache-2.0"
  depends_on macos: :ventura

  def install
    bin.install "bin/swift-format" => "swift-format"
  end

  test do
    system bin/"swift-format", "--version"
  end
end
