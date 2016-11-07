//
//  RegistrationPhoneViewController.m
//  Businesspad
//
//  Created by Apple1 on 28/10/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "RegistrationPhoneViewController.h"
#import "RegistrationOtpViewController.h"

@interface RegistrationPhoneViewController ()
@property (weak, nonatomic) IBOutlet UITextField *confirmMobileTxtFld;
@property (weak, nonatomic) IBOutlet UIButton *sendBtn;

- (IBAction)sendBtn:(UIButton *)sender;
@end

@implementation RegistrationPhoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.hidesBackButton = YES;
[[self navigationController] setNavigationBarHidden:YES animated:YES];
   
      [self.sendBtn setBackgroundColor:[UIColor colorWithRed:20/255.0 green:99/255.0 blue:169/255.0 alpha:1]];
    // Do any additional setup after loading the view.
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES animated:animated];
    [super viewWillAppear:animated];
}
//- (void)viewDidDisappear: (BOOL)animated
//{
//    [self.navigationController setNavigationBarHidden:NO animated:animated];
//    [super viewDidDisappear:animated];
//}

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

- (IBAction)sendBtn:(UIButton *)sender {
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    RegistrationOtpViewController *registrationOtpViewController=[story instantiateViewControllerWithIdentifier:@"RegistrationOtp"];
    [self presentViewController:registrationOtpViewController animated:NO completion:nil];
    
    
   
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{   [self.confirmMobileTxtFld becomeFirstResponder];
    _confirmMobileTxtFld.text=@"";
    
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.confirmMobileTxtFld resignFirstResponder];

    return NO;
}
- (IBAction)BackBtn:(UIButton *)sender {
    
    
    [self dismissViewControllerAnimated:YES completion:NO];
}
@end
