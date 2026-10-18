cask "ai-optimizer" do
  version "1.0.2"
  sha256 "0bde4dfbc60978e7191d394975c0f6394ae1c90fef79add73f96be162a320f74"

  url "https://github.com/airshell/ai-optimizer/releases/download/v#{version}/AI-Optimizer-macOS.dmg"
  name "AI Optimizer"
  desc "Autonomous token and cost optimizer for AI coding assistants"
  homepage "https://optimizer.aimaxo.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "AiOptimizer.app"

  zap trash: [
    "~/.gemini/ai-optimizer",
    "~/Library/Application Support/AiOptimizer",
    "~/Library/Preferences/com.airshell.ai-optimizer.plist",
  ]
end
