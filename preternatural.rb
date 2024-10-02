class Preternatural < Formula
     desc "Preternatural CLI tool"
     homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
     url "https://github.com/PreternaturalAI/cli-binary/raw/refs/heads/master/Sources/preternatural"
     sha256 "a31aa3972c44a18ef637857bf7da2cc400bff800ba97ec16162f35cf03c7754c"
     version "0.0.23"

     def install
       bin.install "preternatural"
     end

     test do
       system "#{bin}/preternatural"
     end
   end