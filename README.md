# DesignSystem

DesignSystem is a Swift library that provides several utilities to standardize and streamline the design process of your app. It includes the following features:

### DynamicColor ✅
A struct that provides support for dark and light mode, and can adjust its colors dynamically to match the user's preferred appearance.

### Font ✅
A helper for registering external fonts and a struct for organizing your app's fonts.

### Extensions ⚙️
An extension for SwiftUI's Color that allows you to initialize a color with a hexadecimal value and an alpha value.

### View Modifiers ⚙️
In progress

### Static values ✅
Constants to standardize spacing between UI elements.

### Components ⚙️
Buttons: customizable buttons in terms of color, size, and shape to perform specific actions in the app.

Text fields: text fields for data entry, such as form filling and search.

Navigation bar: a bar at the top of the screen that provides navigation options for the app.

Tab bar: a bar at the bottom of the screen that allows the user to switch between different sections of the app.

Alerts: notifications that appear on the screen to inform the user of important information or actions.

Progress indicators: visual cues that show the progress of a task or process, such as loading animations.

Cards: information or content displayed in a card-like format, which can be swiped or tapped for additional actions or information.

Lists: a list of items or data displayed in a scrollable format.

Pickers: a UI element that allows the user to select from a list of options, such as a date or time picker.

Sliders: a UI element that allows the user to adjust a value, such as volume or brightness, by sliding a control back and forth.

## Installation

DesignSystem can be installed using Swift Package Manager. Add the following to your Package.swift file:

     .package(url: "https://github.com/pedroullmann/DesignSystem.git", from: Version("1.0.0"))

## Usage

### DynamicColor

DynamicColor is a struct that provides a way to create colors that adjust to the user's preferred appearance.

```swift
public extension DesignSystem.DynamicColor {
     static let textPrimary: Self = .init(
         light: .init(hex: "000000", alpha: 1.0),
         dark: .init(hex: "FFFFFF", alpha: 1.0)
     )
}
```

### Font

The Font struct provides a way to organize and register your app's fonts.

```swift
// Register an external font
DesignSystem.Font.register(withFilename: "MyFont-Regular", fileExtension: "ttf")
DesignSystem.Font.register(withFilename: "MyFont-Bold", fileExtension: "ttf")

public extension DesignSystem.Typography {
    static let paragraph1: Self = .init(
        font: .init(
            family: "MyFont",
            style: "Regular"
        ),
        size: 14
    )

    static let paragraph1Bold: Self = .init(
        font: .init(
            family: "MyFont",
            style: "Bold"
        ),
        size: 14
    )
}
```

### Static values

DesignSystem provides a set of static values to standardize spacing between UI elements.

```swift
struct MyView: View {
    var body: some View {
        VStack(spacing: DesignSystem.Spacings.small) {
            Text("Hello")
            Spacer()
            Text("World")
        }
        .padding(DesignSystem.Spacings.xLarge)
    }
}
```
