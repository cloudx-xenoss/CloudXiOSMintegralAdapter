# CloudX Mintegral Adapter  
Mintegral adapter for CloudX Core iOS SDK

## 🛠️ Installation

### 📦 CocoaPods

Mintegral adapter for CloudX SDK is available though [CocoaPods](https://guides.cocoapods.org/using/getting-started.html).

Open your project's `Podfile` and add this line to your app's target
```ruby
pod CloudXMintegralAdapter
```

Install the pod from command line using:
```bash
pod install --repo-update
```
- Installing via Cocoapods should handle the project configuration, but if you run into any issues building, running, or seeing ads, check the Project Configuration / Troubleshooting steps below

### 📦 Swift Package Manager

Import the Swift Package into your XCode project via the following url
```bash
https://github.com/cloudx-xenoss/CloudXiOSMintegralAdapter
```
- If you run into any issues during installation, check the Project Configuration / Troubleshooting steps below

### 📦 Manual  
1. Navigate to the releases and open the latest release (or whichever release you would like): [Releases](https://github.com/cloudx-xenoss/CloudXiOSMintegralAdapter/releases)  
2. 📥 Download the `CloudXMintegralAdapter.xcframework.zip` file from the release  
3. 🗂️ Unzip the download then drag and drop `CloudXMintegralAdapter.xcframework` into your XCode project
4. Follow the Project Configuration / Troubleshooting steps in the section below for additional setup setups

## 📄 Update your Info.plist

***The Mintegral SKAdNetowrk ID is required for Meta to make bids***
```xml
<key>SKAdNetworkItems</key>
<array>
    <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>yvggqfexfs.skadnetwork</string>
    </dict>
</array>
```

## 🧰 Project Configuration / Troubleshooting

**1. Linker Flags**  
Add the following to your project’s Other Linker Flags in Build Settings:  
`-ObjC`

**2. Enable Objective-C Exceptions (Recommended)**
- Some older versions of Mintegral SDKs expect Obj-C exceptions to be enabled.
- Go to Build Settings
- Set Enable Objective-C Exceptions (GCC_ENABLE_OBJC_EXCEPTIONS) to YES


**3. App Transport Security (ATS)**  
If your app communicates with non-HTTPS servers for ads (less common), update your Info.plist to allow exceptions:  
```
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```
⚠️ *Note: Only do this if absolutely necessary.*


**4. NSUserTrackingUsageDescription (iOS 14+)**  
If your app targets iOS 14+, and you want access to the IDFA, you must add a usage description in your Info.plist:
```
<key>NSUserTrackingUsageDescription</key>
<string>This identifier will be used to deliver personalized ads to you.</string>
```

**5. Privacy Keys (Info.plist)**
Starting iOS 14+, Apple's privacy requirements mean you need to add usage descriptions:
```
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app uses your location for better ad targeting.</string>
<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>This app uses your location for better ad targeting.</string>
<key>NSUserTrackingUsageDescription</key>
<string>This identifier will be used to deliver personalized ads to you.</string>
```
⚠️ Optional, only if your app or the ad SDK uses location.


**6. Minimum Deployment Target**  
📱 As of recent versions, Mintegral SDK requires iOS 11.0+. Set this in your project’s deployment target.


**7. Bitcode (Optional)**  
🚫 Mintegral SDK does not support Bitcode. If you're running into issues during archive or validation, disable Bitcode:  

Go to your target → Build Settings → Set **Enable Bitcode** to `NO`.
