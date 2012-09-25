' This script uses native VBScript to extract all files from a zip archive
' to a folder.
' Command line arguments for this script are:
'  source: Location of zip file
'  dest  : Destination directory (where to extract the files)

Set args = WScript.Arguments.Named
strZipFile = args.Item("source")
strDestDir = args.Item("dest")

Set objShell = CreateObject( "Shell.Application" )
Set objSource = objShell.NameSpace(strZipFile).Items()
Set objTarget = objShell.NameSpace(strDestDir)

' These are the available CopyHere options, according to MSDN
' (http://msdn2.microsoft.com/en-us/library/ms723207.aspx).
' Unknown whether they actually work
intOptions = 16
objTarget.CopyHere objSource, intOptions

'Clean up
Set WshShell = CreateObject("Wscript.Shell")
tempfolder = WshShell.ExpandEnvironmentStrings("%temp%")
Set fso = CreateObject("Scripting.FileSystemObject")
