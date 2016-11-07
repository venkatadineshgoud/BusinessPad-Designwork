//
//  VehicleInsuranceDetailsViewController.m
//  Businesspad
//
//  Created by Apple1 on 05/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "VehicleInsuranceDetailsViewController.h"
#import "VehicleInsuranceUpdateViewController.h"

@interface VehicleInsuranceDetailsViewController ()

@property (weak, nonatomic) IBOutlet UIButton *deleteBtn;
@property (weak, nonatomic) IBOutlet UIButton *updateBtn;
- (IBAction)DeleteBtn:(UIButton *)sender;
- (IBAction)UpdateBtn:(UIButton *)sender;

- (IBAction)BackBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;

@end

@implementation VehicleInsuranceDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];

     self.scroll.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+100);
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.deleteBtn.layer.cornerRadius=18.0f;
    self.deleteBtn.layer.masksToBounds=YES;
    self.updateBtn.layer.cornerRadius=18.0f;
    self.updateBtn.layer.masksToBounds=YES;
    [self.deleteBtn.layer setBorderWidth:1.0];
    [self.deleteBtn.layer setBorderColor:[[UIColor darkGrayColor] CGColor]];
    // Do any additional setup after loading the view.
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

- (IBAction)DeleteBtn:(UIButton *)sender {
}

- (IBAction)UpdateBtn:(UIButton *)sender {
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    VehicleInsuranceUpdateViewController *vehicleInsuranceUpdateViewController=[story instantiateViewControllerWithIdentifier:@"VehicleInsuranceUpdateViewController"];
    [self presentViewController:vehicleInsuranceUpdateViewController animated:NO completion:nil];
}

- (IBAction)BackBtn:(UIButton *)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
