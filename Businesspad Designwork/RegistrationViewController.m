//
//  RegistrationViewController.m
//  Businesspad
//
//  Created by Apple1 on 28/10/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "RegistrationViewController.h"
#import "RegistrationPhoneViewController.h"
#import "SignUpViewController.h"

@interface RegistrationViewController ()
@property (weak, nonatomic) IBOutlet UITextField *passwordTxtFld;

@property (weak, nonatomic) IBOutlet UITextField *nameTxtFld;
@property (weak, nonatomic) IBOutlet UITextField *emailTxtFld;
- (IBAction)signUpBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *signUpBtn;
@property (weak, nonatomic) IBOutlet UITextField *phoneTxtFld;
- (IBAction)backBtn:(UIButton *)sender;
@end

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    CALayer *border = [CALayer layer];
//    CGFloat borderWidth = 2;
//    border.borderColor = [UIColor whiteColor].CGColor;
//    border.frame = CGRectMake(100, _nameTxtFld.frame.size.height - borderWidth, _nameTxtFld.frame.size.width, _nameTxtFld.frame.size.height+50);
//    border.borderWidth = borderWidth;
//    [_nameTxtFld.layer addSublayer:border];
//    _nameTxtFld.layer.masksToBounds = YES;

    self.navigationController.navigationBar.hidden = YES;
    
   
    [self.signUpBtn setBackgroundColor:[UIColor colorWithRed:20/255.0 green:99/255.0 blue:169/255.0 alpha:1]];
    
    self.navigationItem.hidesBackButton = YES;

    
  
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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)textFieldDidBeginEditing:(UITextField *)textField

{
   
    if(textField.tag==0)
    {  [self.nameTxtFld becomeFirstResponder];
        
    
    _nameTxtFld.text=@"";
}
    else if (textField.tag==1)
    {
        [self.emailTxtFld becomeFirstResponder];
        
        _emailTxtFld.text=@"";
    }
    
  else if (textField.tag==2)
  {
      [self.phoneTxtFld becomeFirstResponder];
      
       _phoneTxtFld.text=@"";
  }
   else if (textField.tag==3)
   {
       [self.passwordTxtFld becomeFirstResponder];
       
       _passwordTxtFld.text=@"";

   }
   }
- (IBAction)signUpBtn:(UIButton *)sender {
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
   RegistrationPhoneViewController *registrationPhoneViewController=[story instantiateViewControllerWithIdentifier:@"RegistrationPhone"];
    [self presentViewController:registrationPhoneViewController animated:NO completion:nil];
  }
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if(textField.tag==0)
    {
        [self.nameTxtFld resignFirstResponder];
        

        
          }
    else if (textField.tag==1)
    {
        [self.emailTxtFld resignFirstResponder];
            }
    
    else if (textField.tag==2)
    {
         [self.phoneTxtFld resignFirstResponder];
            }
    else if (textField.tag==3)
    {
         [self.passwordTxtFld resignFirstResponder];
    }

    
    return NO;
    
}
- (IBAction)backBtn:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];

   }
@end
