class Preternatural < Formula
     desc "Preternatural CLI Tool"
     homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
     url "https://github.com/PreternaturalAI/cli-binary/raw/refs/heads/master/Sources/preternatural"
     sha256 "bc4b78b7f2e2f96d61be0eaee005ca9bfbd6020827d0e65c1e55bcdc4f110348"
     version "0.0.28"

     def install
       bin.install "preternatural"
     end

     test do
       system "#{bin}/preternatural"
     end
   end
