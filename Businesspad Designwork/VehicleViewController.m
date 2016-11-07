//
//  VehicleViewController.m
//  Businesspad
//
//  Created by Apple1 on 02/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "VehicleViewController.h"
#import "RegistrationViewController.h"
#import "VehicleDetailsViewController.h"
#import "sidemenuViewController.h"

@interface VehicleViewController ()
@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIButton *vehicle1Btn;
@property (weak, nonatomic) IBOutlet UIButton *vehicle2Btn;
- (IBAction)BackBtn:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *vehicleDefaultBtn1;
- (IBAction)vehicleDefaultBtn1:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *vehicleSelectBtn1;
- (IBAction)vehicleSelectBtn1:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *vehicleDefaultBtn2;
- (IBAction)vehicleDefaultBtn2:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *vehicleSelectBtn2;
- (IBAction)vehicleSelectBtn2:(UIButton *)sender;


@end

@implementation VehicleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.vehicleDefaultBtn1.hidden=YES;
    self.vehicleSelectBtn2.hidden=YES;
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
 _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap:)];
    singleFingerTap.numberOfTapsRequired=1;
    [self.vehicle1Btn addGestureRecognizer:singleFingerTap];
    
    UITapGestureRecognizer *singleFingerTap1 =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap1:)];
    singleFingerTap1.numberOfTapsRequired=1;
    [self.vehicle2Btn addGestureRecognizer:singleFingerTap1];
    
    
    self.vehicle1Btn.layer.cornerRadius=1.0f;
    self.vehicle1Btn.layer.masksToBounds=YES;
    
    self.vehicle2Btn.layer.cornerRadius=1.0f;
    self.vehicle2Btn.layer.masksToBounds=YES;
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
-(void)handleSingleTap:(UITapGestureRecognizer *)sender
{ self.vehicleSelectBtn1.hidden=NO;
    self.vehicleDefaultBtn1.hidden=YES;
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    VehicleDetailsViewController *vehicleDetailsViewController=[story instantiateViewControllerWithIdentifier:@"VehicleDetailsViewController"];
    [self presentViewController:vehicleDetailsViewController animated:NO completion:nil];
}
-(void)handleSingleTap1:(UITapGestureRecognizer *)sender
{        self.vehicleSelectBtn2.hidden=NO;
    self.vehicleDefaultBtn2.hidden=YES;

    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    VehicleDetailsViewController *vehicleDetailsViewController=[story instantiateViewControllerWithIdentifier:@"VehicleDetailsViewController"];
    [self presentViewController:vehicleDetailsViewController animated:NO completion:nil];
}
- (IBAction)BackBtn:(UIButton *)sender {
   [self dismissViewControllerAnimated:NO completion:nil];
//    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    sidemenuViewController *sidemenusidemenVC=[story instantiateViewControllerWithIdentifier:@"sidemenusidemenVC"];
//    [self presentViewController:sidemenusidemenVC animated:NO completion:nil];

}
- (IBAction)vehicleDefaultBtn1:(UIButton *)sender {
    self.vehicleSelectBtn1.hidden=NO;
    self.vehicleDefaultBtn1.hidden=YES;
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    VehicleDetailsViewController *vehicleDetailsViewController=[story instantiateViewControllerWithIdentifier:@"VehicleDetailsViewController"];
    [self presentViewController:vehicleDetailsViewController animated:NO completion:nil];

}
- (IBAction)vehicleSelectBtn1:(UIButton *)sender {
}
- (IBAction)vehicleDefaultBtn2:(UIButton *)sender {
    self.vehicleSelectBtn2.hidden=NO;
    self.vehicleDefaultBtn2.hidden=YES;
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    VehicleDetailsViewController *vehicleDetailsViewController=[story instantiateViewControllerWithIdentifier:@"VehicleDetailsViewController"];
    [self presentViewController:vehicleDetailsViewController animated:NO completion:nil];

}
- (IBAction)vehicleSelectBtn2:(UIButton *)sender {
}
@end
