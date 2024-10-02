class Preternatural < Formula
     desc "Preternatural CLI tool"
     homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
     url "https://github.com/PreternaturalAI/cli-binary/raw/refs/heads/master/Sources/preternatural"
     sha256 "5dbb69a6b9b8b9a5cfa1090e86b7a4193545c60c9443cc42b5a313afa158ef49"
     version "0.0.24"

     def install
       bin.install "preternatural"
     end

     test do
       system "#{bin}/preternatural"
     end
   end