//
//  VehicleParkingFessViewController.m
//  Businesspad
//
//  Created by Apple1 on 02/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "VehicleParkingFessViewController.h"
#import "VehicleParkingFeesTableViewCell.h"
#import "VehicleDetailsViewController.h"
#import "VehicleViewController.h"

@interface VehicleParkingFessViewController ()
@property (weak, nonatomic) IBOutlet UIView *titleView;
- (IBAction)BackBtn:(UIButton *)sender;

@end

@implementation VehicleParkingFessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    
       // Do any additional setup after loading the view.
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)BackBtn:(UIButton *)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}
@end
