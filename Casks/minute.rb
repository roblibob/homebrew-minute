cask "minute" do
  version "0.19.0"
  sha256 "4d7b598dbad9e4b58a93a913fd4f3f0ad5b8c4fd9dd9d3dd0977a3e2b1282285"

  url "https://github.com/roblibob/Minute/releases/download/v#{version}/Minute-#{version}.dmg"
  name "Minute"
  desc "Local-first meeting recorder with transcription and summaries"
  homepage "https://github.com/roblibob/Minute"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Minute.app"

  zap trash: [
    "~/Library/Application Support/Minute",
    "~/Library/Preferences/com.roblibob.Minute.plist",
  ]
end
