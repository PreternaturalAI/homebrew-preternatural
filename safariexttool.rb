class Safariexttool < Formula
  desc "Inspect and repair Safari web extension registration"
  homepage "https://github.com/PreternaturalAI/browser-extension"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/safariexttool-0.1.0/safariexttool.zip"
  sha256 "7f7faaaf63c6fa0a7ccef3d4d88106f0cbfa3244f21be7abbbdc2697f07684c7"

  def install
    artifact_root = buildpath/"swift-brew-artifacts"
    artifact_root.mkpath
    system "unzip", "-q", cached_download, "-d", artifact_root

    artifacts = [
      [
        "safariexttool-executable.zip",
        "safariexttool.artifactbundle/safariexttool/bin/safariexttool",
        "safariexttool",
      ],
    ]

    artifacts.each do |archive, executable_path, installed_name|
      destination = artifact_root/archive.delete_suffix(".zip")
      destination.mkpath
      system "unzip", "-q", artifact_root/archive, "-d", destination
      bin.install destination/executable_path => installed_name
    end
  end

  test do
    system bin/"safariexttool", "--help"
  end
end
