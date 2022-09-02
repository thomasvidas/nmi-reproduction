import Fattmerchant

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  var bridge: RCTBridge!
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    let jsCodeLocation: URL
    jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource:nil)
    
    let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "TestProject", initialProperties: nil, launchOptions: launchOptions)
    
    let rootViewController = UIViewController()
    rootViewController.view = rootView
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = rootViewController
    self.window?.makeKeyAndVisible()
    
    // Stax SDK initialization code
    /*
    let initParams = Omni.InitParams(appId: "fmiossample", apiKey: "apiKey", environment: Environment.DEV)
    let omni = Omni()
    omni.initialize(params: initParams, completion: {
      // Initialized!
      print("Success!")
    }) { (error) in
      print("Error")
      print(error)
    }
    */
    // End Stax SDK initialization code
    
    return true
  }
}
