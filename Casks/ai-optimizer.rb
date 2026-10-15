cask "ai-optimizer" do
  version "1.0.0"
  sha256 "a75dc3c538538d5235baf21540f172ece1d1183ee1fe8533c21826e022c6b61c"

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
