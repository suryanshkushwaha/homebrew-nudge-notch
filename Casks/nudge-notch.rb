cask "nudge-notch" do
  version "0.3.0"
  sha256 "00bef9556343024bfc6744a0da432ba086c330c2a059a8fd4e109cceb19dc933"

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
