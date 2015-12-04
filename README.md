# CRUDeviceID - TL;DR

Add this to your podfile

```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/CruGlobal/cocoapods-specs.git'

pod "CRUDeviceID"
```

```
pod install
```

Send this value with all your API requests (or at least your authentication request)

```objectivec
NSString *deviceID = [CRUDeviceID UUIDString];
```

# CRUDeviceID - Full Version

CRUDeviceID is an ID that is unique to the current device across all apps released by the Cru Global Inc. team.

Sending this ID with your API requests will help your API to pull rich data about your users from Global Registry. Such data can be used to provide sophisticated features for your users.

**How it works:** This class saves the verdor id into keychain and then uses the value in keychain from then on. This ensures that the id represents a single user for the longest period of time and under the most circumstances. We will continue to keep this pod updated to ensure you can make the best correlations between data possible.

## Requirements
[CocoaPods](http://cocoapods.org)

## Installation

CRUDeviceID is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "CRUDeviceID"
```
Note: We have our own cocoapods repo so you will need to add this to the top of your file
```ruby
source 'https://github.com/CocoaPods/Specs.git'
source 'https://github.com/CruGlobal/cocoapods-specs.git'
```
**You will also need to add the `org.cru.shared` keychain access group to your targets capabilities.** Which is explained [here](https://developer.apple.com/library/ios/documentation/IDEs/Conceptual/AppDistributionGuide/AddingCapabilities/AddingCapabilities.html#//apple_ref/doc/uid/TP40012582-CH26-SW15). If you have multiple teams that you are a part of make sure to selected the `Cru Global Inc.` team. This pod is hardcoded to only work with the Cru Global Inc. team (hence the name).

## Usage

```objectivec
NSString *deviceID = [CRUDeviceID UUIDString];
```

We recommend sending this device id with your API requests so that your API can use send it to Global Registry and make correlations between users across our systems. Making these correlations will give you rich information about your users and allow you to really enhance your app. If you have questions about how to best enhance your app using this method contact the pod's author or email apps@cru.org.

## Author

Harro, michael.harrison@cru.org

## License

CRUDeviceID is available under the MIT license. See the LICENSE file for more info.
