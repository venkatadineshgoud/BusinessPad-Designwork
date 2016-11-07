//
//  VehicleSmogCheckUpdateViewController.m
//  Businesspad
//
//  Created by Apple1 on 05/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "VehicleSmogCheckUpdateViewController.h"

@interface VehicleSmogCheckUpdateViewController ()
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;

@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
- (IBAction)BackBtn:(UIButton *)sender;
- (IBAction)CancelBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;
- (IBAction)SaveBtn:(UIButton *)sender;
@end

@implementation VehicleSmogCheckUpdateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
     self.scroll.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+100);
    self.cancelBtn.layer.cornerRadius=18.0f;
    self.cancelBtn.layer.masksToBounds=YES;
    self.saveBtn.layer.cornerRadius=18.0f;
    self.saveBtn.layer.masksToBounds=YES;
    [self.cancelBtn.layer setBorderWidth:1.0];
    [self.cancelBtn.layer setBorderColor:[[UIColor darkGrayColor] CGColor]];
   
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

- (IBAction)CancelBtn:(UIButton *)sender {
}
- (IBAction)SaveBtn:(UIButton *)sender {
}
@end
