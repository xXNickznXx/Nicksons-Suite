# Rainmeter
Link to [DeviantArt](https://www.deviantart.com/xxnicksonxx/art/Nicksons-Suite-814984078).


# Add Languages:
Create Pullrequests for changes like:
* adding a language in Folder: @Resources/General/Languages/
* adding a cutout in folder:  @Resources/Cutout/


# Skins
* Clock
* CPU
* Cutout
* Dark Contextmenu
* Drives
* GPU
* Network (In & Out)
* Player (Web)
* RAM
* Recycle Bin
* Search (Google, Youtube, Stackoverflow)
* Settings
* Taskbar
* TimeNDate
* Translucent Taskbar
* Visualizer
* Weather


# Changelog ---------------
## 1.0.0
### Initial Release

## 1.0.1
### New
* Added localization
  * New option in settings skin
  * 2 initial languages: De, En

## 1.0.2
### New
* Added translations for the context menu
* Added DarkContextMenu plugin & skin
* Added option to set dynamic number of drives
### Changed
* Default language is now "En" (English)
* Change visualizer minheight from % to px
* Sone design tweaks
* In the settings, replaced some inputfields with sliders
### Fixed
* Fixed bug on player, when current time was 0:00 it doesnt showed up or when time was ending with 0:00 it got cut off
* Fixed weather //Credits @jsmorley
### Technical stuff
* Rewrote "Factory.lua" (Merged Smooth&CustomIndex into it)
* Added "Generator.lua" to dynamically generate skins
* Rearranged Code for better readability
