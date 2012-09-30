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

Installation
------------

There is not really much installation for a script. Just unzip it to a folder of
your choice. For convenience, scripts are often placed in the XYplorer/Scripts
folder. 

Since the OpenUpdater contains a number of different files and by 
necessity will contain a git folder (for git operations), I have placed mine as
a subfolder (<xy>/Scripts/OpenUpdater/). The start file can be placed in the XY 
scripts folder and edited to point to the actual OpenUpdater script.

Configuration
-------------

The base file has a few configuration options at the top that can be set 
according to preference.

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
  
Operation Details
-----------------

The OpenUpdater checks for beta and official release changelogs that are posted
in the XY forum. It also checks the download page for the most recent release 
version (which is not always reflected in the forum) and retrieves changelogs 
for any releases which do not appear in the forum.

