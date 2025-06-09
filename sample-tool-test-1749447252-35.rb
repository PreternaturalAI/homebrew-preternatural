class SampleToolTest174944725235 < Formula
  desc "SampleToolTest174944725235 CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/sample-tool-test-1749447252-35-0.0.1/final-artifact.zip"
  sha256 "e25641eab3f76b0dac270fb2ce9cac24ebab079f7646fb8a4517b44c1fe53ffe"
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
      ohai "Skipping sample-tool-test-1749447252-35 daemon service startup in non-interactive environment"
      ohai "To start the service manually: sudo brew services start sample-tool-test-1749447252-35"
      return
    end

    ohai "Checking if SampleDaemon is already running as root..."

    # Check if SampleDaemon is running as root
    running_as_root = `ps aux | grep SampleDaemon | grep -v grep | grep root`.strip.length > 0

    if running_as_root
      ohai "SampleDaemon is already running as root, restarting with bootstrap restart..."
      system "sample-tool-test-1749447252-35 bootstrap restart"
      ohai "sample-tool-test-1749447252-35 daemon restarted successfully!"
    else
      ohai "Starting the sample-tool-test-1749447252-35 daemon service..."
      ohai "Installation of the daemon requires sudo access. Please enter your password in the system popup."

      # Use AppleScript to prompt for admin rights safely
      script = <<~APPLESCRIPT
        do shell script "brew services start sample-tool-test-1749447252-35" with administrator privileges
      APPLESCRIPT

      system "osascript", "-e", script

      unless $?.success?
        opoo "Failed to start the sample-tool-test-1749447252-35 daemon service."
        ohai "You can manually start it later with: sudo brew services start sample-tool-test-1749447252-35"
      else
        ohai "sample-tool-test-1749447252-35 daemon service started successfully!"
        ohai "You can stop the daemon using `sudo brew services stop sample-tool-test-1749447252-35`"
        ohai "You can restart the daemon using `sudo brew services restart sample-tool-test-1749447252-35`"
      end
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