//
//  ViewController.m
//  BusinessPad
//
//  Created by Apple1 on 22/10/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "ViewController.h"
#import "sidemenuViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *line;
@property (weak, nonatomic) IBOutlet UIView *line1;
@property (weak, nonatomic) IBOutlet UIButton *trackBtn;
@property (weak, nonatomic) IBOutlet UILabel *Lbl;
@property (weak, nonatomic) IBOutlet UILabel *Lbl1;
@property (weak, nonatomic) IBOutlet UITabBar *DownTabBar;
@property (weak, nonatomic) IBOutlet UIButton *AddTripBtn;
@property (weak, nonatomic) IBOutlet UIButton *AddExpenses;
@property (weak, nonatomic) IBOutlet UIButton *AddIncome;

@property (weak, nonatomic) IBOutlet UITabBarItem *invoices;
@property (weak, nonatomic) IBOutlet UITabBarItem *Trips;
@property (weak, nonatomic) IBOutlet UIButton *homeBtn;
@property (weak, nonatomic) IBOutlet UIButton *expensesBtn;
@property (weak, nonatomic) IBOutlet UIButton *vcardsBtn;
@property (weak, nonatomic) IBOutlet UIButton *invoicesBtn;
@property (weak, nonatomic) IBOutlet UIButton *tripsBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.AddTripBtn.backgroundColor=[UIColor colorWithRed:45/255.0 green:45/255.0 blue:45/255.0 alpha:1];
     self.AddExpenses.backgroundColor=[UIColor colorWithRed:53/255.0 green:53/255.0 blue:53/255.0 alpha:1];
     self.AddIncome.backgroundColor=[UIColor colorWithRed:45/255.0 green:45/255.0 blue:45/255.0 alpha:1];
    
   self.homeBtn.backgroundColor=[UIColor colorWithRed:23/255.0 green:117/255.0 blue:205/255.0 alpha:1];
    self.expensesBtn.backgroundColor=[UIColor colorWithRed:24/255.0 green:140/255.0 blue:252/255.0 alpha:1];
    self.tripsBtn.backgroundColor=[UIColor colorWithRed:44/255.0 green:157/255.0 blue:253/255.0 alpha:1];
    self.vcardsBtn.backgroundColor=[UIColor colorWithRed:80/255.0 green:174/255.0 blue:253/255.0 alpha:1];
    self.invoicesBtn.backgroundColor=[UIColor colorWithRed:77/255.0 green:157/255.0 blue:222/255.0 alpha:1];
    
    _Titelview.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
    
    
    

    
    
   // self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"businesspad-logo-dashboard"]];
        UIImage *img = [UIImage imageNamed:@"businesspad-logo-dashboard1"];
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [imgView setImage:img];
    // setContent mode aspect fit
    [imgView setContentMode:UIViewContentModeScaleAspectFit];
    self.navigationItem.titleView = imgView;
    self.navigationItem.hidesBackButton = YES;
    
    self.trackBtn.layer.cornerRadius=27.0f;
    self.trackBtn.layer.masksToBounds=YES;
    
    
    _Lbl.layer.cornerRadius = 5;
    _Lbl1.layer.cornerRadius = 5;
    _Lbl.layer.masksToBounds = YES;
    _Lbl1.layer.masksToBounds = YES;
    _Lbl.clipsToBounds = YES;
    _Lbl1.clipsToBounds = YES;
    [[_Lbl1 layer] setMasksToBounds:YES];
    [[_Lbl layer] setMasksToBounds:YES];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:nil size:15.0f], UITextAttributeFont, nil] forState:UIControlStateNormal];
    
     // Do any additional setup after loading the view, typically from a nib.
}
-(void)viewWillLayoutSubviews {
    CGRect tabFrame = self.DownTabBar.frame;
    tabFrame.size.height = 65;
    tabFrame.origin.y = self.view.frame.size.height - 65;
    self.DownTabBar.frame = tabFrame;
    
    
   

}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sidemenubuttn:(id)sender {
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    sidemenuViewController *sidemenusidemenVC=[story instantiateViewControllerWithIdentifier:@"sidemenusidemenVC"];
    [self presentViewController:sidemenusidemenVC animated:NO completion:nil];
    

    
}
@end
