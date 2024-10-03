class Preternatural < Formula
     desc "Preternatural CLI Tool"
     homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
     url "https://github.com/PreternaturalAI/cli-binary/raw/refs/heads/master/Sources/preternatural"
     sha256 "d6bead16941c3e4f24b8cb645443ba2dd7e948c1e8179a41e2f7e1faaf09d70a"
     version "0.0.26"

     def install
       bin.install "preternatural"
     end

     test do
       system "#{bin}/preternatural"
     end
   end
