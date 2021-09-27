namespace LGPlusApp;

uses
  UIKit;

type
  [UIApplicationMain, IBObject]
  AppDelegate = class(IUIApplicationDelegate)
  private
  public
    property window: UIWindow;

    method application(application: UIApplication) didFinishLaunchingWithOptions(launchOptions: NSDictionary): Boolean;
    begin
      self.window := new UIWindow();

      if UIDevice.currentDevice.userInterfaceIdiom = UIUserInterfaceIdiom.UIUserInterfaceIdiomPhone then
      begin

        // create your iPhone views here

        var viewController := new MainWindowViewController;

        window.rootViewController := new UINavigationController withRootViewController(viewController);


      end
      else
      begin

        // create your iPad views here

      end;

      self.window.makeKeyAndVisible;
      exit true;
    end;

    method applicationWillResignActive(application: UIApplication);
    begin
      // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
      // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    end;

    method applicationDidEnterBackground(application: UIApplication);
    begin
      // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
      // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    end;

    method applicationWillEnterForeground(application: UIApplication);
    begin
      // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    end;

    method applicationDidBecomeActive(application: UIApplication);
    begin
      // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    end;

    method applicationWillTerminate(application: UIApplication);
    begin
      // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    end;


  end;

end.