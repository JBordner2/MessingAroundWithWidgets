/*
Stateless widgets are immutable, meaning that their properties can’t change—all values are final.

Stateful widgets maintain state that might change during the lifetime of the widget.
Implementing a stateful widget requires at least two classes: 1) a StatefulWidget class that creates an instance of 2) a State class.
The StatefulWidget class is, itself, immutable and can be thrown away and regenerated, but the State class persists over the lifetime of the widget.


Other questions to chat about with team:
  - In iOS I'm very accustomed to having a viewModel or (store as we call it), how is the architecture going to look for flutter

  - When is it appropriate to use a gridView rather than a listView with columns and or Rows


Spacing Elements In A List Resources:
https://stackoverflow.com/questions/53141752/set-the-space-between-elements-in-row-flutter

  Need to come back to:
     - When to use lazy loading
     - Future / Promises (try this out in move app)
     - Building lists (Still a bit confused as to when I should be creating a row / column vs a tile / grid)

 */