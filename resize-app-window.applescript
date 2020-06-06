(*
  AppleScript to resize app windows to HD equivalent (1920x1080) ratio for screencasting.
  Open in the Script Editor app.
*)

tell application "Safari" to set bounds of front window to {0, 23, 1440, 833}
tell application "iTerm" to set bounds of front window to {0, 23, 1440, 833}
