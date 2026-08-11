class Preternatural < Formula
  desc "Command-line development automation tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.0.56/final-artifact.zip"
  sha256 "5db4cb80a792ad864f95b22bff91869cf7e361d9b53b73d8dcbc81d14b64b352"

  def install
    artifact_root = buildpath/"swift-brew-artifacts"
    artifact_root.mkpath
    system "unzip", "-q", cached_download, "-d", artifact_root

    artifacts = [
      [
        "preternatural-executable.zip",
        "preternatural.artifactbundle/preternatural/bin/preternatural",
        "preternatural",
      ],
      [
        "preternaturald-daemon.zip",
        "preternaturald.artifactbundle/preternaturald/bin/preternaturald",
        "preternaturald",
      ],
    ]

    artifacts.each do |archive, executable_path, installed_name|
      destination = artifact_root/archive.delete_suffix(".zip")
      destination.mkpath
      system "unzip", "-q", artifact_root/archive, "-d", destination
      bin.install destination/executable_path => installed_name
    end
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
