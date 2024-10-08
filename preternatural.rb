class Preternatural < Formula
     desc "Preternatural CLI Tool"
     homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
     url "https://github.com/PreternaturalAI/CLI-release/raw/refs/heads/master/Sources/preternatural"
     sha256 "8291652f023ac0d6bf8f44535055809f9b7dd6f0f5bea9ce9bf96a3c304d228d"
     version "0.0.29"

     def install
       bin.install "preternatural"
     end

     test do
       system "#{bin}/preternatural"
     end
   end
