class SampleTool174944485335Daemon < Formula
  desc "SampleTool174944485335Daemon CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/sample-tool-1749444853-35-daemon-0.0.1/final-artifact.zip"
  sha256 "c67d959e659baaf47e71b3aa5c48614da3a5593723371d8d01dd0e6b4cb4b819"
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

  def post_install
    # Skip service start in CI / non-interactive environments
    if ENV["CI"] || !$stdin.tty?
      ohai "Skipping sample-tool-1749444853-35-daemon daemon service startup in non-interactive environment"
      ohai "To start the service manually: sudo brew services start sample-tool-1749444853-35-daemon"
      return
    end

    ohai "Starting the sample-tool-1749444853-35-daemon daemon service..."
    ohai "Installation of the daemon requires sudo access. Please enter your password in the system popup."

    # Use AppleScript to prompt for admin rights safely
    script = <<~APPLESCRIPT
      do shell script "brew services start sample-tool-1749444853-35-daemon" with administrator privileges
    APPLESCRIPT
    
    system "osascript", "-e", script
    
    unless $?.success?
      opoo "Failed to start the sample-tool-1749444853-35-daemon daemon service."
      ohai "You can manually start it later with: sudo brew services start sample-tool-1749444853-35-daemon"
    else
      ohai "sample-tool-1749444853-35-daemon daemon service started successfully!"
      ohai "You can stop the daemon using `sudo brew services stop sample-tool-1749444853-35-daemon`"
      ohai "You can restart the daemon using `sudo brew services restart sample-tool-1749444853-35-daemon`"
    end
  end

  service do
    run [opt_bin/"SampleDaemon"]
    run_type :immediate
    keep_alive true
    run_at_load true
    require_root true
    log_path var/"log/SampleDaemon.log"
    error_log_path var/"log/SampleDaemon.err.log"
  end
end