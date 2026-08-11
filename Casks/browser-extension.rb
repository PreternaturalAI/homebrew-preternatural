cask "browser-extension" do
  version "0.1.0"
  sha256 "3e7d6f72f5a4b53982fb6b18caf039747c6ba85ac5a472f313648bc6869d5c74"

  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/browser-extension-0.1.0/browser-extension.zip"
  name "Preternatural Browser Extension"
  desc "Native host and Safari extension for Preternatural browser automation"
  homepage "https://preternatural.ai"

  depends_on macos: :sequoia

  app "BrowserExtensionContainer.app"
end
