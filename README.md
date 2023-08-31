#  FB13091055

NavigationLink and .simultaneousGesture() are not executed simultaneaously.

## Scenario

A List of NavigationLinks in a NavigationStack. Each list row (aka NavigationLink) should also do something else when it gets selected.


## Issue

NavigationLink and .simultaneousGesture() are not both executed. When tapping the text only the Gesture is executed, when tapping the background only the NavigationLink is executed.


## Expected

The NavigationLink is handled as usual and the .simultaneousGesture() is executed.
