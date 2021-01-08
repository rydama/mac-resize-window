(*
  AppleScript to resize app windows.
  Open in the Script Editor app.
*)


(* 16:9 ratio for macbook pro screen 
tell application "iTerm" to set bounds of front window to {0, 23, 1440, 833}
tell application "Firefox" to set bounds of front window to {0, 23, 1440, 833}
*)

set thePosition to {0, 22}
set theSize to {1440, 880}

set appNames to {"Brave Browser", "Dash", "DataGrip", "iTerm2", "Slack", "Snagit 2020", "TextEdit", "Preview"}

tell application "System Events"
	repeat with appName in appNames
		try
			tell process appName
			  with timeout of 2 seconds
				repeat with windowNumber from 1 to (count windows)
					tell window windowNumber
						set position to thePosition
						set size to theSize
					end tell
				end repeat
			  end timeout
			end tell
		end try
	end repeat
end tell
