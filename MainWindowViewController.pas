namespace LGPlusApp;

uses
  LGPlusButtons,
  UIKit;

type
  [IBObject]
  MainWindowViewController = public class(UIViewController)
  private
  public
    property buttonsView:weak LGPlusButtonsView;

    method init: InstanceType; override;
    begin
      self := inherited initWithNibName('MainWindowViewController') bundle(nil);
      if assigned(self) then
      begin

        // Custom initialization

      end;
      result := self;
    end;


    method viewDidLoad; override;
    begin
      inherited viewDidLoad;

      // Do any additional setup after loading the view.
    end;

    method didReceiveMemoryWarning; override;
    begin
      inherited didReceiveMemoryWarning;

      // Dispose of any resources that can be recreated.
    end;


    method viewWillAppear(animated: BOOL); override;
    begin
      inherited viewWillAppear(animated);

      buttonsView := LGPlusButtonsView.plusButtonsViewWithNumberOfButtons(4) firstButtonIsPlusButton(true) showAfterInit(true);

      buttonsView.coverColor := UIColor.colorWithWhite(1.0) alpha(0.7);
      buttonsView.plusButtonAnimationType := LGPlusButtonAnimationType.Rotate;
      buttonsView.position := LGPlusButtonsViewPosition.BottomRight;

      //buttonsView.observedScrollView := self.scrollView;
      buttonsView.coverColor := UIColor.colorWithWhite(1.0) alpha(0.7);
      buttonsView.plusButtonAnimationType := LGPlusButtonAnimationType.Rotate;
      buttonsView.setButtonsTitles(["+", "", "", ""]) forState(UIControlState.Normal);
      buttonsView.setDescriptionsTexts(["", "Take a photo", "Choose from gallery", "Send a message"]);
      buttonsView.setButtonsImages([NSNull.new(), UIImage.imageNamed("Camera"), UIImage.imageNamed("Picture"), UIImage.imageNamed("Message")]) forState(UIControlState.Normal) forOrientation(LGPlusButtonsViewOrientation.All);
      buttonsView.setButtonsAdjustsImageWhenHighlighted(false);
      buttonsView.setButtonsBackgroundColor(UIColor.colorWithRed(0.0) green(0.5) blue(1.0) alpha(1.0)) forState(UIControlState.Normal);
      buttonsView.setButtonsBackgroundColor(UIColor.colorWithRed(0.2) green(0.6) blue(1.0) alpha(1.0)) forState(UIControlState.Highlighted);
      buttonsView.setButtonsBackgroundColor(UIColor.colorWithRed(0.2) green(0.6) blue(1.0) alpha(1.0)) forState(UIControlState.Highlighted or UIControlState.Selected);
      buttonsView.setButtonsSize(CGSizeMake(44.0, 44.0)) forOrientation(LGPlusButtonsViewOrientation.All);
      buttonsView.setButtonsLayerCornerRadius(44.0 / 2.0) forOrientation(LGPlusButtonsViewOrientation.All);
      buttonsView.setButtonsTitleFont(UIFont.boldSystemFontOfSize(24.0)) forOrientation(LGPlusButtonsViewOrientation.All);
      buttonsView.setButtonsLayerShadowColor(UIColor.colorWithRed(0.1) green(0.1) blue(0.1) alpha(1.0));
      buttonsView.setButtonsLayerShadowOpacity(0.5);
      buttonsView.setButtonsLayerShadowRadius(3.0);
      buttonsView.setButtonsLayerShadowOffset(CGSizeMake(0.0, 2.0));
      buttonsView.setButtonAtIndex(0) size(CGSizeMake(56.0, 56.0)) forOrientation(
        iif(UIDevice.currentDevice.userInterfaceIdiom = UIUserInterfaceIdiom.Phone,LGPlusButtonsViewOrientation.Portrait,LGPlusButtonsViewOrientation.All));

      buttonsView.setButtonAtIndex(0) layerCornerRadius(56.0 / 2.0) forOrientation(
        iif(UIDevice.currentDevice.userInterfaceIdiom = UIUserInterfaceIdiom.Phone,LGPlusButtonsViewOrientation.Portrait,LGPlusButtonsViewOrientation.All));

      buttonsView.setButtonAtIndex(0) titleFont(UIFont.systemFontOfSize(40.0)) forOrientation(
        iif(UIDevice.currentDevice.userInterfaceIdiom = UIUserInterfaceIdiom.Phone,LGPlusButtonsViewOrientation.Portrait,LGPlusButtonsViewOrientation.All));

      buttonsView.setButtonAtIndex(0) titleOffset(CGPointMake(0.0, -3.0)) forOrientation(LGPlusButtonsViewOrientation.All);
      buttonsView.setButtonAtIndex(1) backgroundColor(UIColor.colorWithRed(1.0) green(0.0) blue(0.5) alpha(1.0)) forState(UIControlState.Normal);
      buttonsView.setButtonAtIndex(1) backgroundColor(UIColor.colorWithRed(1.0) green(0.2) blue(0.6) alpha(1.0)) forState(UIControlState.Highlighted);
      buttonsView.setButtonAtIndex(2) backgroundColor(UIColor.colorWithRed(1.0) green(0.5) blue(0.0) alpha(1.0)) forState(UIControlState.Normal);
      buttonsView.setButtonAtIndex(2) backgroundColor(UIColor.colorWithRed(1.0) green(0.6) blue(0.2) alpha(1.0)) forState(UIControlState.Highlighted);
      buttonsView.setButtonAtIndex(3) backgroundColor(UIColor.colorWithRed(0.0) green(0.7) blue(0.0) alpha(1.0)) forState(UIControlState.Normal);
      buttonsView.setButtonAtIndex(3) backgroundColor(UIColor.colorWithRed(0.0) green(0.8) blue(0.0) alpha(1.0)) forState(UIControlState.Highlighted);
      buttonsView.setDescriptionsBackgroundColor(UIColor.whiteColor());
      buttonsView.setDescriptionsTextColor(UIColor.blackColor());
      buttonsView.setDescriptionsLayerShadowColor(UIColor.colorWithRed(0.1) green(0.1) blue(0.1) alpha(1.0));
      buttonsView.setDescriptionsLayerShadowOpacity(0.25);
      buttonsView.setDescriptionsLayerShadowRadius(1.0);
      buttonsView.setDescriptionsLayerShadowOffset(CGSizeMake(0.0, 1.0));
      buttonsView.setDescriptionsLayerCornerRadius(6.0) forOrientation(LGPlusButtonsViewOrientation.All);
      buttonsView.setDescriptionsContentEdgeInsets(UIEdgeInsetsMake(4.0, 8.0, 4.0, 8.0)) forOrientation(LGPlusButtonsViewOrientation.All);


      for i: NSUInteger := 1 to 3 do
        buttonsView.setButtonAtIndex(i) offset(CGPointMake(-6.0, 0.0)) forOrientation(
          iif(UIDevice.currentDevice.userInterfaceIdiom = UIUserInterfaceIdiom.Phone,LGPlusButtonsViewOrientation.Portrait,LGPlusButtonsViewOrientation.All));

      if (UIDevice.currentDevice.userInterfaceIdiom = UIUserInterfaceIdiom.Phone) then
      begin
        buttonsView.setButtonAtIndex(0) titleOffset(CGPointMake(0.0, -2.0)) forOrientation(LGPlusButtonsViewOrientation.Landscape);
        buttonsView.setButtonAtIndex(0) titleFont(UIFont.systemFontOfSize(32.0)) forOrientation(LGPlusButtonsViewOrientation.Landscape);
      end;

      self.navigationController.view.addSubview(buttonsView);

    end;

  end;

end.