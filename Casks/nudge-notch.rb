cask "nudge-notch" do
  version "0.3.8"
  sha256 "7d98365556035faee9b9ef4964b927f5aaf04768fbf8f358ed2355afb3827084"

  url "https://github.com/suryanshkushwaha/nudge.notch/releases/download/v#{version}/nudgeNotch.dmg"
  name "NudgeNotch"
  desc "Gentle nudges for your wellbeing and focus, right in your MacBook notch"
  homepage "https://github.com/suryanshkushwaha/nudge.notch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "nudgeNotch.app"

  zap trash: [
    "~/Library/Preferences/com.kushwahaandcompany.nudgeNotch.plist",
    "~/Library/Containers/suryanshkushwaha.nudgeNotch/",
  ]
end
