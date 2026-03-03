cask "minute" do
  version "0.19.1"
  sha256 "9aef125f793750178064d83346b433b95c2d03b0511ded5302009946c154e194"

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
