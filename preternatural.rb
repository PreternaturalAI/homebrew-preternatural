class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.0.8/final-artifact.zip"
  sha256 "bc4a96ae416de4c79606db7002cb92894a71a313792d6f248a4322e031ca1f6f"
  version "0.0.8"

  def install
    # Unzip the main artifact bundle
    system "unzip", "-o", cached_download

    # Install executables and daemons
    [
      ["*-executable.zip", "-executable.zip"],
      ["*-daemon.zip", "-daemon.zip"]
    ].each do |glob_pattern, suffix|
      Dir.glob(glob_pattern).each do |zip_name|
        # Unzip the inner zip file directly
        system "unzip", "-o", zip_name
        
        # Extract tool name from the zip filename
        tool_name = File.basename(zip_name, suffix)

        # Install the binary
        binary_path = "#{tool_name}.artifactbundle/#{tool_name}/bin/#{tool_name}"
        bin.install binary_path if File.exist?(binary_path)
      end
    end
  end

  def post_install
    bin.children.each do |binary|
      local_copy = "/usr/local/bin/#{binary.basename}"
      if File.exist?(local_copy) && !File.symlink?(local_copy)
        ohai "Removing manually installed #{local_copy} to avoid PATH shadowing"
        system "rm", "-f", local_copy
      end
    end
  end
end