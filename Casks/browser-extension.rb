cask "browser-extension" do
  version "0.1.0"
  sha256 "7f3f5eac2bfa137ed6adbbc050dba3c3de69586c708c08107dc0be4a560b3f50"

  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/browser-extension-#{version}/browser-extension.zip"
  name "Preternatural Browser Extension"
  desc "Native host and Safari extension for Preternatural browser automation"
  homepage "https://preternatural.ai"

  depends_on macos: :sequoia

  app "BrowserExtensionContainer.app"
end
