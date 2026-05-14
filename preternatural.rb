class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.0.7/final-artifact.zip"
  sha256 "babf18364f1068efeee5f5754a4eaf4929128fcfd7d755328bad35ac80287976"
  version "0.0.7"

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
      local_copy = Pathname.new("/usr/local/bin/#{binary.basename}")
      if local_copy.exist? && !local_copy.symlink?
        ohai "Removing manually installed #{local_copy} to avoid PATH shadowing"
        local_copy.delete
      end
    end
  end
end