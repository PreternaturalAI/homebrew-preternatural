class Safariexttool < Formula
  desc "Inspect and repair Safari web extension registration"
  homepage "https://github.com/PreternaturalAI/browser-extension"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/safariexttool-0.1.0/safariexttool.zip"
  sha256 "c21e05264f640d620dbbe59717e6eebc6c32bcde93e006fe2811af0ed0fbfdb9"
  depends_on macos: :sonoma

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
