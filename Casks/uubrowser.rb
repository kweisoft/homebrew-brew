cask "uubrowser" do
  version "2.12.2"
  sha256 "5f0812d18d321857cc3d4f70c34f314d62552e8e3a1d98f712c65dc2af2fe1d2"

  #https://github.com/kweisoft/UUBrowser_mac/releases/download/V2.12.2/UUBrowser_Arm_2.12.2.dmg
  url "https://github.com/kweisoft/UUBrowser_mac/releases/download/V#{version}/UUBrowser_Arm_#{version}.dmg"
  name "UUBrowser"
  desc "UUBrowser for macOS"
  homepage "https://github.com/kweisoft/UUBrowser_mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "UUBrowser.app"

  # 可选：为浏览器添加命令行工具
  binary "#{appdir}/UUBrowser.app/Contents/MacOS/UUBrowser", target: "uubrowser"

  # 卸载时清理浏览器数据
  zap trash: [
    "~/Library/Application Support/UUBrowser",
    "~/Library/Caches/UUBrowser",
    "~/Library/Preferences/com.uukei.uubrowser.plist",
    "~/Library/Saved Application State/com.uukei.uubrowser.savedState",
    "~/Library/WebKit/UUBrowser",
  ]
end