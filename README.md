#  FB13091055

NavigationLink and .simultaneousGesture() are not executed simultaneaously.

## Scenario

A List of NavigationLinks in a NavigationStack. Each list row (aka NavigationLink) should also do something else when it gets selected.


## Issue

NavigationLink and .simultaneousGesture() are not both executed. When tapping the text only the Gesture is executed, when tapping the background only the NavigationLink is executed.


## Expected

The NavigationLink is handled as usual and the .simultaneousGesture() is executed.


## Tested on

 - Xcode Version 15.0 beta 8 (15A5229m): iPhone 14 Pro (iOS 17.0), iPad Pro (11-inch) (iOS 17.0)
 - Xcode Version 15.0 RC (15A240d): iPhone 15 Pro (iOS 17.0), iPad Pro (11-inch) (iOS 17.0)
