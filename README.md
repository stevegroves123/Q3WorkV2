# Q3WorkV2

Running work database on the phone via avery large JSON file - this version makes it easier for user entry.

There is still a problem where if the user presses the keyboard delete to erase the number, the look up is using .Filter and everytime the user changes the number the filter re-indexes the complete JSON file stopping the phone from working.

Now added a search for Location and Team along with the existing Equipment No; will think about a search for Serial No.

Colour coded the search buttons and used NavigationLink to move around the various screens, this reduces the screen size so on some smaller screens the information is off the bottom and the user needs to scroll up/down.


