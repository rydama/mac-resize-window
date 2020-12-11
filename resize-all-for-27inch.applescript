(*
  AppleScript to resize app windows to HD equivalent (1920x1080) ratio for screencasting.
  Open in the Script Editor app.
*)


(* 
tell application "iTerm" to set bounds of front window to {0, 23, 1440, 833}
tell application "Firefox" to set bounds of front window to {0, 23, 1440, 833}
*)
set theSize to {475, 50, 2150, 1300}

tell application "Brave Browser" to set bounds of front window to theSize
tell application "iTerm" to set bounds of front window to theSize
tell application "Slack" to set bounds of front window to theSize


tell application "System Events" to tell process "DataGrip"
	tell window 1
		set position to {475, 50}
		set size to {1675, 1250}
	end tell
end tell



(*
tell application "Script Editor" to set bounds of front window to {475, 100, 2150, 1150}
tell application "iTerm" to set bounds of front window to {475, 100, 2150, 1150}
tell application "Slack" to set bounds of front window to {475, 100, 2150, 1150}
tell application "Dash" to set bounds of front window to {475, 100, 2150, 1150}
tell application "Snagit 2020" to set bounds of front window to {475, 100, 2150, 1150}
tell application "DataGrip" to set bounds of front window to {475, 100, 2150, 1150}
*)

(*
tell application "System Events"
	set theProcesses to application processes
	repeat with theProcess from 1 to count theProcesses
		tell process theProcess
			repeat with x from 1 to (count windows)
				set windowPosition to position of window x
				set windowSize to size of window x
				set position of window x to {475, 100}
				set size of window to {2150, 1150}
			end repeat
		end tell
	end repeat
end tell
*)

