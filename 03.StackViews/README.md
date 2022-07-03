
# Stack Views

## Googleable Terms

UIStackView, Distribution, Alignment, UIScrollView

## Links

[UIStackView](https://developer.apple.com/documentation/uikit/uistackview)

[UIScrollView](https://developer.apple.com/documentation/uikit/uiscrollview)

[Auto Layout Cookbook Example](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/LayoutUsingStackViews.html#//apple_ref/doc/uid/TP40010853-CH11-SW1)

[Distribution](https://developer.apple.com/documentation/uikit/uistackview/distribution)

[UIStackView.Alignment](https://developer.apple.com/documentation/uikit/uistackview/alignment)

[NSHispter](https://nshipster.com/uistackview/)

## Gotchas

When adding views to `UIStackView` remember it's `addArrangedSubview` not `addSubview`

How you pin your StackView matters

When it comes to Custom Views intrinsicContentSize is your friend

Parentes tell their children what to do

Style with layoutGuides and SpacerView

## Examples

The examples are in the **Examples** project in the root. 

## Challenges

Challenges on this module consisted on recreating the spotify playback option screen made in the fisrt module, but using custom views and stack views to rearrange it, but maintaining the same visual.