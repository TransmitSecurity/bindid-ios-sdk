# XmBindIdSDK

# Introduction

Welcome to the future of customer authentication—strong, portable authentication across all your channels.

## What is BindID?

The BindID service is an app-less, strong portable authenticator offered by [Transmit Security](https://www.transmitsecurity.com/). BindID uses FIDO-based biometrics for secure, frictionless, and consistent customer authentication. With one click to create new accounts or sign into existing ones, BindID eliminates passwords and the inconveniences of traditional credential-based logins.

BindID is a great solution for various use cases, including:

-   Passwordless authentication for web and mobile applications.
-   User authentication for call centers, IVR, and voice assistance.
-   Frictionless new account opening.
-   Secure verification for infrequent users.

## Authentication and Trust

Combining device-based FIDO biometrics with the OpenID Connect \(OIDC\) protocol, BindID provides a secure and easy-to-deploy authentication process that can be used for any app, in any channel.

Here's how it works:

1.  User performs an action that requires authentication \(such as login\).
2.  User executes an authentication process with BindID—which may also include registering to BindID, registering a strong authenticator \(e.g., FIDO2 biometrics\), and additional data verifications \(e.g., SMS OTP\).
3.  Upon successful authentication, you receive user metadata—which provides user profile info, provides trust indicators, and reflects all their known devices across all providers that use BindID.
4.  If needed, you perform your own additional authentication for the user \(e.g., for new users\), and report this back to BindID, along with a user alias that represents a user in your system.


## Installation

### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate XmBindIdSDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'XmBindIdSDK', '~> 1.20.0'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate XmBindIdSDK into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "https://github.com/TransmitSecurity/bindid-ios-sdk" ~> 1.20.0
```

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but XmBindIdSDK does support its use on supported platforms.

Once you have your Swift package set up, adding XmBindIdSDK as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/TransmitSecurity/bindid-ios-sdk.git", .upToNextMajor(from: "1.20.0"))
]
```

### Manually

If you prefer not to use any of the aforementioned dependency managers, you can integrate XmBindIdSDK into your project manually.

#### Embedded Framework

- Download the XmBindIdSDK framework manullay, open the new `XmBindIdSDK` folder, and drag the `XmBindIdSDK.xcframework` into the Project Frameworks directory of your application's Xcode project.

- And that's it!

  > The `XmBindIdSDK.framework` is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.