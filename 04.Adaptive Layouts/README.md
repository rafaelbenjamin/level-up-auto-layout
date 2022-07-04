
# Adaptive Layouts

## Googleable Terms

Orientation, Landscape, Portrait, Enabling & Disabling Constraints

## Links

[isActive](https://developer.apple.com/documentation/uikit/nslayoutconstraint/1527000-isactive)

[isHidden](https://developer.apple.com/documentation/uikit/uiview/1622585-ishidden)

## Gotchas

In this example and design challenge we used

`UIDevice.current.orientation.isLandscape`

to determine device orientation. This works, but its deprecated and no longer the ideal way. I used it purely for it's simplicity and to focus more on the Auto Layout.

If you want to talk orientation changes, the language we use today is more around class sizes. This is because on the iPad you can be in what looks like a landscape orientation but really render in portrait. So large iPhone sizes enable you to do this too.

In this cases you want to listen for callbacks and events from the `UITraitCollection` class which you can read more about here:

[UITraitCollection](https://developer.apple.com/documentation/uikit/uitraitcollection)

## Examples

The examples are in the **Examples** project in the root. 

## Challenges

Challenges on this module consisted on adapting the previous screen to be fit on landscape mode.