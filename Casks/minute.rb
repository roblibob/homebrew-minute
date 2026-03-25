cask "minute" do
  version "0.22.0"
  sha256 "2441937e6d9a576a16eb2a2b142821c385ceeb5fdfb4963a1ae5364190cbc892"

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
