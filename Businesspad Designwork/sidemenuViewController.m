//
//  sidemenuViewController.m
//  Businesspad
//
//  Created by Apple2 on 01/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "sidemenuViewController.h"
#import "REPagedScrollView.h"
#import "VehicleViewController.h"
#import "MyAccountsViewController.h"
#import "InvoiceViewController.h"

@interface sidemenuViewController ()
{

    REPagedScrollView *scrollView;


}

@end

@implementation sidemenuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    
    [[_Signoutbuttnoutlet layer] setBorderWidth:0.5f];
     [_Signoutbuttnoutlet.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    _Signoutbuttnoutlet.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
   _firstviewpagecontroler.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    _secondviewpagecontroller.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    //buttnbackgroundcolrs
    
    
    _Homebuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
    _Tripsbuttnoutlets.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
    _Bankingbuttnoutlets.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
    _Expencesbuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
    _Incomebuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
    _Invoicebuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
     _Bussinesbuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
     _Vechiclebuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
     _Reciptsbuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
     _Accountentsbuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
     _Vcardsbuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];
     _Settingsbuttnoutlet.backgroundColor=[UIColor colorWithRed:0/255.0 green:138/255.0 blue:225/255.0 alpha:1];

    

    
    
    
    
    
    scrollView = [[REPagedScrollView alloc] initWithFrame:self.view.bounds];
    scrollView.pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor grayColor];
    [self.view addSubview:scrollView];
    
    
     [_Signoutbuttnoutlet addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:_Signoutbuttnoutlet];
    [_crossbuttnoutlet addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [scrollView addSubview:_crossbuttnoutlet];

    
    [scrollView addPage:_firstviewpagecontroler];
    [scrollView addPage:_secondviewpagecontroller];

    

    // Do any additional setup after loading the view.
}

- (void)buttonPressed:(UIButton *)button
{
    [self dismissViewControllerAnimated:YES completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)invoiceButton:(id)sender {
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    InvoiceViewController *inVoiceVC=[story instantiateViewControllerWithIdentifier:@"inVoiceVC"];
    [self presentViewController:inVoiceVC animated:NO completion:nil];
}

- (IBAction)vehicleBtn:(UIButton *)sender {
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    VehicleViewController *vehicleViewController=[story instantiateViewControllerWithIdentifier:@"VehicleViewController"];
    [self presentViewController:vehicleViewController animated:NO completion:nil];
}
- (IBAction)settingButton:(id)sender {
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MyAccountsViewController *myAccountVC=[story instantiateViewControllerWithIdentifier:@"myAccountVC"];
    [self presentViewController:myAccountVC animated:NO completion:nil];
}
@end
