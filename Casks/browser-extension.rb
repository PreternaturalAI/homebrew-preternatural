cask "browser-extension" do
  version "0.1.0"
  sha256 "4b3feb190c86564196d961f28765662df3f5bf31f590d6a7ce83b452fdb107a2"

  url "https://github.com/PreternaturalAI/homebrew-preternatural/releases/download/browser-extension-#{version}/browser-extension.zip"
  name "Preternatural Browser Extension"
  desc "Native host and Safari extension for Preternatural browser automation"
  homepage "https://preternatural.ai"

  depends_on macos: :sequoia

  app "BrowserExtensionContainer.app"
end
