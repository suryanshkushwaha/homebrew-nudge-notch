cask "nudge-notch" do
  version "0.3.7"
  sha256 "99aac618c079626c8e46ffebf638ee1f8f06814673fd65fdc894f41cecbe30d2"

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