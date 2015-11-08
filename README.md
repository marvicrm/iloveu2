# iloveu2
This is a self-replicating vbscript program. I created this code to a better understanding how a malware works
Please keep in mind that vbscript only works on Windows

<b>What this code does?</b>

1. Create a copy on desktop (hidden+system attributes)
2. Create a fake google chrome shortcut (which opens the malware itself and google chrome)
3. Create an infinite loop and sleep for every 10 seconds. wait for an available drive (removeable & fixed drive to copy itself)
4. Create an autorun.inf (autorun.inf triggers the computer to run the malware once flashdrive is connected)
5. Create 4 different shortcut folders with a tempting name (thus ordinary user may tempt to open it)
 
<b>How to stop its execution</b>
This program does not run on startup thus it is easy to remove. Here are the following steps to remove it

1. Look for task manager, and find the "wscript.exe" and kill it
2. Open folder options, show the hidden files
3. Delete the google chrome shortcut and the malware itself (iloveu2.vbs)
