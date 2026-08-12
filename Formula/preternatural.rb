class Preternatural < Formula
  desc "Command-line development automation tool"
  homepage "https://github.com/PreternaturalAI/command-line-tool"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.0.56/preternatural.zip"
  sha256 "dc262c368556ffef0c303c76e5cc4711d8ccd9d86878f9066795895ec7442997"
  depends_on macos: :sonoma

  def install
    bin.install "preternatural" => "preternatural"
    bin.install "preternaturald" => "preternaturald"
  end

  service do
    run [opt_bin/"preternaturald"]
    run_type :immediate
    keep_alive true
    run_at_load true
    require_root true
    log_path var/"log/preternaturald.log"
    error_log_path var/"log/preternaturald.err.log"
  end

  test do
    system bin/"preternatural", "--help"
  end
end
