import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      GeneratedPluginRegistrant.register(with: self)
          // Eklediğimiz satır
          GMSServices.provideAPIKey("AIzaSyAKaa4JofRe03psqDBR4cPipl_MRqteDbk")
      
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
