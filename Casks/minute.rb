cask "minute" do
  version "0.20.0"
  sha256 "4c4a9cebc1c546f52a92506cf981cf0f538f9bd61eb9fe06dcf3c3d51cb4ca0c"

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
