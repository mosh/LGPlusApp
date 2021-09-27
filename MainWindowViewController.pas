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

      buttonsView := LGPlusButtonsView.plusButtonsViewWithNumberOfButtons(2) firstButtonIsPlusButton(true) showAfterInit(true);

      //_plusButtonsViewMain.coverColor = [UIColor colorWithWhite:1.f alpha:0.7];
      //_plusButtonsViewMain.position = LGPlusButtonsViewPositionBottomRight;
      //_plusButtonsViewMain.plusButtonAnimationType = LGPlusButtonAnimationTypeRotate;
      buttonsView.plusButtonAnimationType := LGPlusButtonAnimationType.Rotate;
      buttonsView.position := LGPlusButtonsViewPosition.BottomRight;



      self.navigationController.view.addSubview(buttonsView);

    end;

  end;

end.