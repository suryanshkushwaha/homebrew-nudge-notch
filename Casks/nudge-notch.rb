cask "nudge-notch" do
  version "1.0.0"
  sha256 "b2b5c5203a5aa54d4df9d8c5caf99b5ddc4377e34907dddd5b33e4903af27558"

  url "https://github.com/suryanshkushwaha/nudge.notch/releases/download/v#{version}/nudgeNotch.dmg"
  name "NudgeNotch"
  desc "Gentle nudges for your wellbeing and focus, right in your MacBook notch"
  homepage "https://github.com/suryanshkushwaha/nudge.notch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "nudgeNotch.app"

  zap trash: [
    "~/Library/Preferences/com.kushwahaandcompany.nudgeNotch.plist",
    "~/Library/Containers/suryanshkushwaha.nudgeNotch/",
  ]
end
