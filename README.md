# Jumio-test

### Unsuccessful steps to integrate so far:

Environment: Xcode 8.3.3, macOS Sierra (10.12.5)

1) Clean Swift Xcode Project (`Jumio.xcodeproj`)

2) Podfile created and set to:

```swift
source 'https://github.com/CocoaPods/Specs.git'
source 'http://mobile-sdk.jumio.com/distribution.git'

target 'Jumio' do
  use_frameworks!

  	# Pods for Jumio
	pod 'JumioMobileSDK/Netverify'

end

```

3) `pod install`

4) Opened `Jumio.xcworkspace`

5) In `ViewController.swift` attempted to setup `Netverify` via:

```swift
import Netverify

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupJumio()
    }
    
    func setupJumio() {
        let configuration = NetverifyConfiguration()
        configuration.merchantApiToken = ""
        configuration.merchantApiSecret = ""
        configuration.dataCenter = JumioDataCenterEU
        configuration.delegate = self
    }
}
```

6) Ensured `ViewController` has the appropriate delegate:

```swift
extension ViewController: NetverifyViewControllerDelegate {
    
    func netverifyViewController(_ netverifyViewController: NetverifyViewController, didFinishInitializingWithError error: Error?) {
        //
    }
    
    func netverifyViewController(_ netverifyViewController: NetverifyViewController, didCancelWithError error: Error?, scanReference: String?) {
        //
    }
    
    func netverifyViewController(_ netverifyViewController: NetverifyViewController, didFinishWith documentData: NetverifyDocumentData, scanReference: String) {
        //
    }
}
```

7) Attempted to build the project resulting in the following error:

```swift
ld: warning: ignoring file <PROJECT-DIRECTORY>/Pods/JumioMobileSDK/sdk-device-frameworks/JumioCore.framework/JumioCore, missing required architecture x86_64 in file <PROJECT-DIRECTORY>/Pods/JumioMobileSDK/sdk-device-frameworks/JumioCore.framework/JumioCore (2 slices)
ld: warning: ignoring file <PROJECT-DIRECTORY>/Pods/JumioMobileSDK/sdk-device-frameworks/MicroBlink.framework/MicroBlink, missing required architecture x86_64 in file <PROJECT-DIRECTORY>/Pods/JumioMobileSDK/sdk-device-frameworks/MicroBlink.framework/MicroBlink (2 slices)
ld: warning: ignoring file <PROJECT-DIRECTORY>/Pods/JumioMobileSDK/sdk-device-frameworks/Netverify.framework/Netverify, missing required architecture x86_64 in file <PROJECT-DIRECTORY>/Pods/JumioMobileSDK/sdk-device-frameworks/Netverify.framework/Netverify (2 slices)
ld: warning: ignoring file <PROJECT-DIRECTORY>/Pods/JumioMobileSDK/sdk-device-frameworks/Umoove.framework/Umoove, missing required architecture x86_64 in file <PROJECT-DIRECTORY>/Pods/JumioMobileSDK/sdk-device-frameworks/Umoove.framework/Umoove (2 slices)
Undefined symbols for architecture x86_64:
  "_OBJC_CLASS_$_NetverifyConfiguration", referenced from:
      objc-class-ref in ViewController.o
ld: symbol(s) not found for architecture x86_64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```

## Misc 

### Integration Questions

We normally integrate our third party dependancies via Carthage, this could well be a Cocoapods specific problem rather than Jumio. 

1. Have you encountered the above error before?
2. Are there plans for Jumio to support Carthage? 
3. Do you have a working Swift example project?

### Sample 

Downloading the latest Jumio release (`2.7.0`) contains a `JumioMobileSDKSample`, running this locally out the box also fails with very similar `architecture x86_64` errors. Is there an integration step that I have missed?
