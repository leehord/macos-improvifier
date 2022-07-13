# ---------- #
# Go faster
# ---------- #

echo "Disable window + popover open / close animations"
defaults write -g NSAutomaticWindowAnimationsEnabled -boolean false

echo "Speed up showing / hiding sheets, resizing pref windows, zooming windows, etc."
defaults write -g NSWindowResizeTime -float 0.001

echo "Speed up closing QuickLook windows"
defaults write -g QLPanelAnimationDuration -float 0

echo "Hide the dock faster"
defaults write com.apple.Dock autohide-delay -float 0

echo "Don't animate hiding/showing the dock"
defaults write com.apple.dock autohide-time-modifier -float 0

echo "Disable launch animations in the dock"
defaults write com.apple.dock launchanim -boolean false

echo "Disable Finder animations"
defaults write com.apple.finder DisableAllAnimations -boolean true

echo "Speed up Mission Control / Exposé animations"
defaults write com.apple.dock expose-animation-duration -float 0.1

# ---------- #
# Finder
# ---------- #

echo "Disable extension change warning (wtf)"
defaults write com.apple.finder FXEnableExtensionChangeWarning -boolean false

echo "Enable Finder quitting"
defaults write com.apple.finder QuitMenuItem -boolean true

echo "Show full posix path in title bar"
defaults write com.apple.finder _FXShowPosixPathInTitle -boolean true

echo "Show Finder path bar"
defaults write com.apple.finder ShowPathBar -boolean true

echo "Show Finder status bar"
defaults write com.apple.finder ShowStatusBar -bool true

echo "Show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -boolean true

echo "Limit finder search scope to current dir"
defaults write com.apple.finder FXDefaultSearchScope -string “SCcf”

echo "Disable DS_Store"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -boolean true

echo "Select text from QuickLook (may no longer work)"
defaults write com.apple.finder QLEnableTextSelection -boolean true

echo "Enable folder spring loading"
defaults write NSGlobalDomain com.apple.springing.enabled -boolean true

# ---------- #
# System
# ---------- #

echo "Dim hidden apps in the dock"
defaults write com.apple.Dock showhidden -boolean true

echo "Enable dock spring loading"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -boolean true

echo "Use the expanded save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -boolean true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -boolean true

echo "Use the expanded print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -boolean true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -boolean true

echo "Automatically quit printer app"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -boolean true

echo "Disable download quarantining"
# 'Are you sure you want to open this thing from the internet?'
defaults write com.apple.LaunchServices LSQuarantine -boolean false

echo "Enable more sensible power / sleep button settings"
defaults write com.apple.loginwindow PowerButtonSleepsSystem -boolean false

echo "Slow down Time Machine backup interval from hourly to every 4 hours"
defaults write /System/Library/LaunchDaemons/com.apple.backupd-auto StartInterval -int 14400

echo "Disable Time Machine prompt"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

echo "Don't save to iCloud by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -boolean false

echo "Don't float help viewer windows"
defaults write com.apple.helpviewer DevMode -boolean true

# ---------- #
# Input
# ---------- #

echo "Repeat a letter upon holding a keypress"
defaults write -g ApplePressAndHoldEnabled -boolean false

echo "Repeat letters quickly"
defaults write NSGlobalDomain KeyRepeat -int 3

# ---------- #
# Misc
# ---------- #

echo "TextEdit defaults to plaintext, not rich text"
defaults write com.apple.TextEdit RichText -int 0

echo "Disable TextEdit ruler"
defaults write com.apple.TextEdit ShowRuler 0

echo "Save screenshots as .jpg"
defaults write com.apple.screencapture type jpg

echo "Disable screenshot shadow"
defaults write com.apple.screencapture disable-shadow -boolean true

echo "Disable t.co URLs in TweetBot"
defaults write com.tapbots.TweetbotMac OpenURLsDirectly -boolean true

# Fin!
echo "Strongly suggest restarting the computer now!"
