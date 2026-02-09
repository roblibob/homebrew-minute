cask "minute" do
  version "0.15.2"
  sha256 "78e3cdbbfb57671f54dbf626e3d1eac2dfa7968344c236e7cd6512e762404078"

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
