//
//  VehicleSmogcheckDetailsViewController.m
//  Businesspad
//
//  Created by Apple1 on 05/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "VehicleSmogcheckDetailsViewController.h"
#import "VehicleSmogCheckUpdateViewController.h"

@interface VehicleSmogcheckDetailsViewController ()
@property (weak, nonatomic) IBOutlet UIView *titleView;
- (IBAction)BackBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (weak, nonatomic) IBOutlet UIButton *deleteBtn;
- (IBAction)DeleteBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *updateBtn;
- (IBAction)UpdateBtn:(UIButton *)sender;

@end

@implementation VehicleSmogcheckDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
     _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
    self.deleteBtn.layer.cornerRadius=18.0f;
    self.deleteBtn.layer.masksToBounds=YES;
    self.updateBtn.layer.cornerRadius=18.0f;
    self.updateBtn.layer.masksToBounds=YES;
    [self.deleteBtn.layer setBorderWidth:1.0];
    [self.deleteBtn.layer setBorderColor:[[UIColor darkGrayColor] CGColor]];
     self.scroll.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+100);
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

- (IBAction)BackBtn:(UIButton *)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}
- (IBAction)DeleteBtn:(UIButton *)sender {
}
- (IBAction)UpdateBtn:(UIButton *)sender {
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    VehicleSmogCheckUpdateViewController *vehicleSmogCheckUpdateViewController=[story instantiateViewControllerWithIdentifier:@"VehicleSmogCheckUpdateViewController"];
    [self presentViewController:vehicleSmogCheckUpdateViewController animated:NO completion:nil];
}
@end
