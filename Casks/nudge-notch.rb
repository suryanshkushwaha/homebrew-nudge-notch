cask "nudge-notch" do
  version "0.3.7+1"
  sha256 "ec8969efa2db06bd731ca8aa2b20a13f2cc5a36081d8ef40f26bbca3b75b28b2"

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
