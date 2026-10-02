cask "openhere" do
  version "1.0.3"
  sha256 "988b6b22bdbfe346578cba659fd077d9b463c6c6eead41e3a6e112a7e9238f11"

  url "https://github.com/demartini/openhere/releases/download/v#{version}/OpenHere-#{version}.dmg"
  name "OpenHere"
  desc "Open the Finder location in the terminal or editor you choose"
  homepage "https://github.com/demartini/openhere"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "OpenHere.app"

  # OpenHere is ad-hoc signed and not notarized, so Gatekeeper would block the first launch.
  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/OpenHere.app"],
        must_succeed: false
  end

  uninstall quit: [
    "dev.demartini.openhere",
    "dev.demartini.openhere.FinderExtension",
  ]

  zap trash: [
    "~/Library/Application Support/OpenHere",
    "~/Library/Caches/dev.demartini.openhere",
    "~/Library/Containers/dev.demartini.openhere.FinderExtension",
    "~/Library/HTTPStorages/dev.demartini.openhere",
    "~/Library/Preferences/dev.demartini.openhere.plist",
  ]
end
