//
//  AddExpensesViewController.m
//  Businesspad Designwork
//
//  Created by Apple1 on 08/11/16.
//  Copyright © 2016 Madu Venkata Dinesh Goud. All rights reserved.
//

#import "AddExpensesViewController.h"

@interface AddExpensesViewController ()

@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIView *typeOfExpenseView;
@property (weak, nonatomic) IBOutlet UIView *infoView;
@property (weak, nonatomic) IBOutlet UIView *expenseCategoryView;
@property (weak, nonatomic) IBOutlet UIView *businessNameView;
@property (weak, nonatomic) IBOutlet UIView *locationView;
@property (weak, nonatomic) IBOutlet UIView *attachTripView;
@property (weak, nonatomic) IBOutlet UIButton *attachTripBtn;
@property (weak, nonatomic) IBOutlet UIButton *AttachReceiptBtn;
@property (weak, nonatomic) IBOutlet UIButton *cancelBtn;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;

@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (weak, nonatomic) IBOutlet UIView *expenseDateView;
- (IBAction)BackBtn:(UIButton *)sender;
@end

@implementation AddExpensesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
    self.scroll.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+400);
    self.cancelBtn.layer.cornerRadius=18.0f;
    self.cancelBtn.layer.masksToBounds=YES;
    self.saveBtn.layer.cornerRadius=18.0f;
    self.saveBtn.layer.masksToBounds=YES;
    [self.cancelBtn.layer setBorderWidth:1.0];
    [self.cancelBtn.layer setBorderColor:[[UIColor darkGrayColor] CGColor]];
self.expenseCategoryView.backgroundColor=[UIColor colorWithRed:24/255.0 green:140/255.0 blue:252/255.0 alpha:1];
    self.businessNameView.backgroundColor=[UIColor colorWithRed:24/255.0 green:140/255.0 blue:252/255.0 alpha:1];
    self.attachTripBtn.backgroundColor=[UIColor colorWithRed:34/255.0 green:209/255.0 blue:146/255.0 alpha:1];
    self.AttachReceiptBtn.backgroundColor=[UIColor colorWithRed:24/255.0 green:163/255.0 blue:115/255.0 alpha:1];
    self.expenseDateView.backgroundColor=[UIColor colorWithRed:24/255.0 green:140/255.0 blue:252/255.0 alpha:1];
     self.saveBtn.backgroundColor=[UIColor colorWithRed:24/255.0 green:140/255.0 blue:252/255.0 alpha:1];
    
    
    self.typeOfExpenseView.layer.cornerRadius=1.0f;
    self.typeOfExpenseView.layer.masksToBounds=YES;
    
    self.attachTripView.layer.cornerRadius=1.0f;
    self.attachTripView.layer.masksToBounds=YES;
    
    self.locationView.layer.cornerRadius=1.0f;
    self.locationView.layer.masksToBounds=YES;
    
    self.businessNameView.layer.cornerRadius=1.0f;
    self.businessNameView.layer.masksToBounds=YES;
    
    self.expenseCategoryView.layer.cornerRadius=1.0f;
    self.expenseCategoryView.layer.masksToBounds=YES;
    
    
    self.infoView.layer.cornerRadius=1.0f;
    self.infoView.layer.masksToBounds=YES;
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
}
@end
