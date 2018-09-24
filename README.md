# InAppLocalization
Swift friendly In-App Localization. Easy way to localize your App without limitation of system language.

iOS as mobile device operation system is quite old. As other old softwares also iOS has some issues/bugs/solutions unsuitable to modern application design.
One of these issues is system of localizations depended on device language. 

This library helps you with two base challenges connected with issue of changing application language "In-App":

- provides models and solutions to set, change and eventually remove language in your application
- provides simple way to localize your view primitives (UILabel, UIButton, ..) with your application language

## Benefits:

- [x] simple way to extend base set of languages (extend `Language` model)
- [x] simple way to keep your localization keys organized (extend `LocalizationKeys` model)
- [x] "swifty" way to localize string with use of `.localized()` or `localize(LocalizedKeys.Path.To.Your.Key)` 
- [x] keep using of standard Localizable.strings files
- [x] simple way to use library for older projects
- [x] change language/localizations with no need of application restart (! existence of limitations*)

Library should keep simple and modifiable as much as possible. That's the main reason to not provide any UI components with library, to not handle redrawing of screen with change of language.

## *Limitations: (known issues)

- localizations of system components as `UIBarButtonItem.SystemItem.done`
  - https://developer.apple.com/documentation/uikit/uibarbuttonitem/systemitem as you can see, some UI components are already localized 
- localizations of storyboards
  - not implemented yet

## ⚠️ Requirements
 
 - iOS 9.0+
 - Swift 4.1+
 - Xcode 9.4.1+
