//
//  MyAccountsViewController.m
//  Businesspad
//
//  Created by Madu Venkata Dinesh Goud on 02/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "MyAccountsViewController.h"

@interface MyAccountsViewController ()


@property (strong, nonatomic) IBOutlet UIView *sView;
@property (strong, nonatomic) IBOutlet UIScrollView *sScrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIView *facebookView;
@property (strong, nonatomic) IBOutlet UIView *gmailView;
@property (strong, nonatomic) IBOutlet UIView *locationView;
@property (strong, nonatomic) IBOutlet UIView *currency;
@property (strong, nonatomic) IBOutlet UIView *closeAccountView;
@property (strong, nonatomic) IBOutlet UIView *personalView;
@property (strong, nonatomic) IBOutlet UIView *alertView;




@end

@implementation MyAccountsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        [self.sScrollView setContentSize:CGSizeMake(self.sView.frame.size.width, self.sView.frame.size.height +570)];
    
    self.sScrollView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
     self.personalView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.alertView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    
    
    self.imageView.layer.cornerRadius = self.imageView.frame.size.width / 2;
    self.imageView.clipsToBounds = YES;
    
    self.imageView.layer.borderWidth = 4.0f;
    self.imageView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.facebookView.layer.cornerRadius=3.0f;
    self.facebookView.layer.masksToBounds=YES;
    self.gmailView.layer.cornerRadius=3.0f;
    self.gmailView.layer.masksToBounds=YES;
    self.locationView.layer.cornerRadius=3.0f;
    self.locationView.layer.masksToBounds=YES;
    self.currency.layer.cornerRadius=3.0f;
    self.currency.layer.masksToBounds=YES;
    self.closeAccountView.layer.cornerRadius=3.0f;
    self.closeAccountView.layer.masksToBounds=YES;
    self.personalView.layer.cornerRadius=3.0f;
    self.personalView.layer.masksToBounds=YES;
    self.alertView.layer.cornerRadius=3.0f;
    self.alertView.layer.masksToBounds=YES;
    
    
    
    // Do any additional setup after loading the view.
}



- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (IBAction)imageCameraButton:(id)sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)cancelButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
