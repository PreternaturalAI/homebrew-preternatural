class Preternatural < Formula
  desc "Command-line development automation tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.0.56/final-artifact.zip"
  version "0.0.56"
  sha256 "5e71223b1f12ca96548ae6fd92c86406a1823f0db550ab4ba117805a20f5e12f"

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

  def post_install
    return unless File.exist?("/Library/LaunchDaemons/homebrew.mxcl.preternatural.plist")

    system bin/"preternatural", "daemon", "restart"
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
