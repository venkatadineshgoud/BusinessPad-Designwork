//
//  SignUpViewController.m
//  BusinessPad
//
//  Created by Apple1 on 22/10/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "SignUpViewController.h"
#import "ViewController.h"
#import "RegistrationViewController.h"

@interface SignUpViewController ()
{
    
        UIScrollView *someScrollView;
    
}


- (IBAction)SignUpWithEmail:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *logo;



@property (weak, nonatomic) IBOutlet UIButton *facebookLogin;
@property (weak, nonatomic) IBOutlet UIView *line;
@property (weak, nonatomic) IBOutlet UIView *line1;
@property (weak, nonatomic) IBOutlet UILabel *orLbl;
@property (weak, nonatomic) IBOutlet UIButton *signUpWithEmail;
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (strong, nonatomic) IBOutlet UIImageView *briefVew1;
@property (strong, nonatomic) IBOutlet UILabel *alreadyhaveAccLbl;
@property (weak, nonatomic) IBOutlet UIButton *gmailLogin;
- (IBAction)scrollViewCancelBtn:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *scrollViewCancelBtn;

@property (weak, nonatomic) IBOutlet UIButton *loginBtn;
@end

@implementation SignUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
  
    
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
//- (void)viewDidDisappear: (BOOL)animated
//{
//    [self.navigationController setNavigationBarHidden:NO animated:animated];
//    [super viewDidDisappear:animated];
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark IB Actions#

- (IBAction)SignUpWithEmail:(UIButton *)sender {
  
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    RegistrationViewController *registrationViewController=[story instantiateViewControllerWithIdentifier:@"Registration"];
    [self presentViewController:registrationViewController animated:NO completion:nil];
  
}



@end
