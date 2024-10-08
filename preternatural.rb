class Preternatural < Formula
     desc "Preternatural CLI Tool"
     homepage "https://github.com/PreternaturalAI/hombrew-preternatural"
     url "https://github.com/PreternaturalAI/CLI-release/raw/refs/heads/master/Sources/preternatural"
     sha256 "9e910e2b69eb39eb01896a17ea0e188a5c753ca19ba2ebc67042d41269bf5391"
     version "0.0.30"

     def install
       bin.install "preternatural"
     end

     test do
       system "#{bin}/preternatural"
     end
   end
