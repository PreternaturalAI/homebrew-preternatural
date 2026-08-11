cask "browser-extension" do
  version "0.1.0"
  sha256 "fd693c4d60e3e58f3e1465fa2d60d68c8fad12900a888d445c4c9f6375f04aef"

  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/browser-extension-0.1.0/browser-extension.zip"
  name "Preternatural Browser Extension"
  desc "Native host and Safari extension for Preternatural browser automation"
  homepage "https://preternatural.ai"

  depends_on macos: :sequoia

  app "BrowserExtensionContainer.app"
end
