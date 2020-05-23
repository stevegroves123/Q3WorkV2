# Q3WorkV2

Running work database on the phone via avery large JSON file - this version makes it easier for user entry.

There is still a problem where if the user presses the keyboard delete to erase the number after the enter key has been pressed the app crashes due to the look up using .Filter.  Everytime the user changes the number the filter re-indexes the complete JSON file (15.5mbytes) so pressing it twice or more in rapid succession does not give time for the reindexing thus stopping the phone from working.

The user has four defined search functions; Equipment Numner, Serial Number, Location(ward) and Team responsible for the equipment.

Colour coded all the search buttons and used NavigationLink to move around the various screens, this reduces the screen size so on some smaller screens the information is off the bottom and the user needs to scroll up/down.


