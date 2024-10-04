class Preternatural < Formula
     desc "Preternatural CLI Tool"
     homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
     url "https://github.com/PreternaturalAI/cli-binary/raw/refs/heads/master/Sources/preternatural"
     sha256 "e88ecf7ac9bd1978f9e83340b6c5bc28d635ff30c42766f6a62ae2a7ffa72fcc"
     version "0.0.27"

     def install
       bin.install "preternatural"
     end

     test do
       system "#{bin}/preternatural"
     end
   end
