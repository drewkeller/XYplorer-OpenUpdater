XYplorer OpenUpdater
====================

The OpenUpdater is a XYplorer script that checks for beta and official releases
of XYplorer. If a new version is found, changelogs are displayed for each 
release between the current version and the newest version. 

The OpenUpdater script is open for modification and extension. The project is 
hosted on github for convenient forking, merging, change tracking, bug tracking, 
etc.

Project page:
http://github.com/drewkeller/XYplorer-OpenUpdater

Download zip file:
http://github.com/drewkeller/XYplorer-OpenUpdater/zipball/master

Features
--------

+ Designed for collaboration
* Checks for updates of beta versions (from the beta topic in the forum)
* Checks for updates of official releases (downloads.php and whatsnew.php)
+ Displays two buttons: one for the latest official release and one for the 
  latest beta release. You can update to either.
* The update buttons are always in view regardless of where you scroll the 
  changelog list.
+ Caching: The downloads from the forum page and whatsnew are cached (for up to
  one hour). Always uses the cached whatsnew copy unless the downloads page has 
  a version that isn't shown in the beta page (whatsnew is a large page).
* Beta logs and release logs are merged, then listed in sequential order by
  version number.
+ The order of listing can be reversed (ascending/descending by version number)
  by using a configuration option
* The downloaded zip files are saved (with a specific version number) so you can 
  revert to one you've downloaded before if something isn't working in a new 
  version.
* You can revert or upgrade to any version zip file that you have in the
  download folder.
* You can delete all downloaded zip files older than a version that you select.
+ Comes with a registry file useful for associating .xys files so they can be 
  placed in arbitrary folders on your computer (also comes with a file you can
  place in your XY scripts folder for convenience).

Items marked with + indicate features that I believe are unique to the OpenUpdater at the time of writing.

Installation
------------

There is not really much installation for a script. Just unzip it to a folder of
your choice. For convenience, scripts are often placed in the XYplorer/Scripts
folder. However, in order to be able to update the main script without manually
editing your specific configurations each time (also, if you are using git to
update, you will want the OpenUpdater project in its own folder), here's what 
I suggest:

1. Place the main OpenUpdater folder somewhere. By default, it's expected to be 
   at <xy>/Scripts/OpenUpdater/
2. Move the following files files to somewhere convenient. These are the 
   scripts you will actually run. The default is <xy>/Scripts/.
    - OpenUpdater_start.xys
    - OpenUpdater_menu.xys
    - OpenUpdater.ini
3. Edit the .ini file to reflect your actual file locations and other 
   preferences.
   
Configuration
-------------

The included .ini file has a few configuration options at the top that can be 
set according to preference. The .ini file is well commented, so refer to it for
details.

Usage
-----

There are a number of ways to execute a XYplorer script.
* Double click on an XYS file. I find this is the most convenient method, but
  XYplorer does not offer a way to set this up, so it has to be set up manually.
  Edit the XYS_association.reg file to reflect the paths you are actually using,
  then double click on it to add the association to the Windows registry. Now
  you can execute a XYS file in an arbitrary location by double clicking on it.
* From within XYplorer, click Scripting > Load Script File or select a script 
  file and then click Scripting > Load Selected Script File.
* Using a user button. The below instructions sets the user button to check for 
  updates when it is left clicked and to show the updater menu when it is right 
  clicked.
  - Right click the toolbar and select Customize toolbar...
  - Add the user button from Available buttons to Current buttons. Click OK.
  - Right click on the user button that is now in the toolbar and select Edit.
  - For the on click action, enter: 
	::load("OpenUpdater_menu", "CheckForUpdates")
  - For the on right-click action, enter:
	"Show updater menu" ::load("OpenUpdater_menu")
* Using a User-Defined Command (UDC). On the menu, select User > Manage Commands.
  There are several ways you can set this up. Refer to XYplorer's help for 
  details.
* By typing in XYplorer's address bar or other equivalent (you might want to
  rename the file):
  ::load(OpenUpdater_menu) or ::load(OpenUpdater_start)
  
Operation Details
-----------------

The OpenUpdater checks for beta and official release changelogs that are posted
in the XY forum. It also checks the download page for the most recent release 
version (which is not always reflected in the forum) and retrieves changelogs 
for any releases which do not appear in the forum.

If a beta or official release version was found that's newer than your current
XY version, a button is shown at the bottom of the screen. Click it to download
and install the newer version. If newer versions are found for both beta and 
official releases, a button is shown for the most recent version of each.

Downloaded packages are saved in the temporary location shown in the .ini file.
The menu script provides means to switch to a different version that you've
downloaded (revert or upgrade) or to delete old packages when you decide you 
don't need them any more.

The changelog for the official releases is significantly large. Since there is
also a smaller download page for the official version, the changelog is cached 
unless it is actually needed.
