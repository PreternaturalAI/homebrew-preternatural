class Preternatural < Formula
     desc "Preternatural CLI tool"
     homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
     url "https://github.com/PreternaturalAI/cli-binary/raw/refs/heads/master/Sources/preternatural"
     sha256 "2f72b8ba6ea772b316a4629bb14484c12a101190066bd441d0ff90b122a3063a"
     version "0.0.25"

     def install
       bin.install "preternatural"
     end

     test do
       system "#{bin}/preternatural"
     end
   end