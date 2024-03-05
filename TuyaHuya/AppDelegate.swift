import Foundation
import UIKit
import ThingSmartBaseKit

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        initTuya()
        return true
    }
    
    func initTuya() {
        ThingSmartSDK.sharedInstance().debugMode = true
        ThingSmartSDK.sharedInstance().start(
            withAppKey: TuyaKeys.appKey,
            secretKey: TuyaKeys.secretKey
        )
    }
}
