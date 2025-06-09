class ComplexTool39Basic < Formula
  desc "ComplexTool39Basic CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/complex-tool-39-basic-0.0.1/final-artifact.zip"
  sha256 "299ed7ae1e6de08891353b1efa10441e2d49e78aa3d3cd7be62cd9ffe5a279ae"
  version "0.0.1"

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
end