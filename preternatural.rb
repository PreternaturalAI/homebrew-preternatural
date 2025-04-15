class Preternatural < Formula
  desc "Preternatural CLI Tool"
  homepage "https://github.com/PreternaturalAI/homebrew-preternatural"
  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/preternatural-0.1.47/final-artifact.zip"
  sha256 "572116ccb8b5ce1c613c592859464761bd2d449a6b1b7d2d89f5fde4cc447c61"
  version "0.1.47"

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
      ohai "Skipping preternatural daemon service startup in non-interactive environment"
      ohai "To start the service manually: sudo brew services start preternatural"
      return
    end

    ohai "Checking if preternaturald is already running as root..."

    # Check if preternaturald is running as root
    running_as_root = `ps aux | grep preternaturald | grep -v grep | grep root`.strip.length > 0

    if running_as_root
      ohai "preternaturald is already running as root, restarting with bootstrap restart..."
      system "preternatural bootstrap restart"
      ohai "preternatural daemon restarted successfully!"
    else
      ohai "Starting the preternatural daemon service..."
      ohai "Installation of the daemon requires sudo access. Please enter your password in the system popup."

      # Use AppleScript to prompt for admin rights safely
      script = <<~APPLESCRIPT
        do shell script "brew services start preternatural" with administrator privileges
      APPLESCRIPT

      system "osascript", "-e", script

      unless $?.success?
        opoo "Failed to start the preternatural daemon service."
        ohai "You can manually start it later with: sudo brew services start preternatural"
      else
        ohai "preternatural daemon service started successfully!"
        ohai "You can stop the daemon using `sudo brew services stop preternatural`"
        ohai "You can restart the daemon using `sudo brew services restart preternatural`"
      end
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
end