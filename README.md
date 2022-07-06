# Q3WorkV2

Running work database on the phone via a very large JSON file - this version makes it easier for user entry.

There is still a problem where if the user presses the keyboard delete to erase the number after the enter key has been pressed the app crashes due to using ".Filter".  Everytime the user changes the number the filter re-indexes the complete JSON file (15.5mbytes) so pressing it twice or more in rapid succession does not give time for the reindexing thus stopping the phone from working.

The user has five defined search functions; Equipment Number, Serial Number, Model, Location(ward) and Team responsible for the equipment.

Colour coded all the search buttons and used NavigationLink to move around the various screens, this reduces the screen size so on some smaller screens the information is off the bottom and the user needs to scroll up/down.

Would like to add a count facility for the various items found on each screen, but this is proving difficult, may need to look at adding a counter somewhere in the list, then display this value.
