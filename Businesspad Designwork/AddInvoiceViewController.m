//
//  AddInvoiceViewController.m
//  Businesspad
//
//  Created by Madu Venkata Dinesh Goud on 04/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "AddInvoiceViewController.h"
#import "AddItemsViewController.h"
#import "AddClientDetailsViewController.h"

@interface AddInvoiceViewController ()
@property (strong, nonatomic) IBOutlet UIView *sView;
@property (strong, nonatomic) IBOutlet UIScrollView *sScrollView;
@property (strong, nonatomic) IBOutlet UILabel *poNumberLabel;
@property (strong, nonatomic) IBOutlet UILabel *invoiceNumberLabel;
@property (strong, nonatomic) IBOutlet UIView *termsView;
@property (strong, nonatomic) IBOutlet UILabel *subtotalLabel;
@property (strong, nonatomic) IBOutlet UILabel *subtotalAmmountLabel;
@property (strong, nonatomic) IBOutlet UILabel *discountLabel;
@property (strong, nonatomic) IBOutlet UILabel *discountAmmountLabel;
@property (strong, nonatomic) IBOutlet UILabel *gts5Label;
@property (strong, nonatomic) IBOutlet UILabel *gts5AmmountLabel;
@property (strong, nonatomic) IBOutlet UILabel *gts9Label;
@property (strong, nonatomic) IBOutlet UILabel *gts9AmmountLabel;
@property (strong, nonatomic) IBOutlet UILabel *totalLabel;
@property (strong, nonatomic) IBOutlet UILabel *totalAmmountLabel;
@property (strong, nonatomic) IBOutlet UILabel *paidLabel;
@property (strong, nonatomic) IBOutlet UILabel *paidAmmountLabel;
@property (strong, nonatomic) IBOutlet UIView *invoiceDateView;
@property (strong, nonatomic) IBOutlet UIView *dueDateView;

@end

@implementation AddInvoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sScrollView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    
    [self.sScrollView setContentSize:CGSizeMake(self.sView.frame.size.width, self.sView.frame.size.height +550)];
    
    self.poNumberLabel.layer.cornerRadius=4.0f;
    self.poNumberLabel.layer.masksToBounds=YES;
    self.invoiceNumberLabel.layer.cornerRadius=4.0f;
    self.invoiceNumberLabel.layer.masksToBounds=YES;
    
    self.termsView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    
    self.subtotalLabel.backgroundColor=[UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:1];
    self.subtotalAmmountLabel.backgroundColor=[UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:1];
    
    self.discountLabel.backgroundColor=[UIColor colorWithRed:43/255.0 green:43/255.0 blue:43/255.0 alpha:1];
    self.discountAmmountLabel.backgroundColor=[UIColor colorWithRed:43/255.0 green:43/255.0 blue:43/255.0 alpha:1];
    
    self.gts5Label.backgroundColor=[UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:1];
    self.gts5AmmountLabel.backgroundColor=[UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:1];
    
    self.gts9Label.backgroundColor=[UIColor colorWithRed:43/255.0 green:43/255.0 blue:43/255.0 alpha:1];
    self.gts9AmmountLabel.backgroundColor=[UIColor colorWithRed:43/255.0 green:43/255.0 blue:43/255.0 alpha:1];
    
    self.totalLabel.backgroundColor=[UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:1];
    self.totalAmmountLabel.backgroundColor=[UIColor colorWithRed:36/255.0 green:36/255.0 blue:36/255.0 alpha:1];
    
    self.paidLabel.backgroundColor=[UIColor colorWithRed:43/255.0 green:43/255.0 blue:43/255.0 alpha:1];
    self.paidAmmountLabel.backgroundColor=[UIColor colorWithRed:43/255.0 green:43/255.0 blue:43/255.0 alpha:1];
    
    self.poNumberLabel.backgroundColor=[UIColor colorWithRed:43/255.0 green:43/255.0 blue:43/255.0 alpha:1];
    self.invoiceNumberLabel.backgroundColor=[UIColor colorWithRed:43/255.0 green:43/255.0 blue:43/255.0 alpha:1];
    
    self.invoiceDateView.backgroundColor=[UIColor colorWithRed:0/255.0 green:140/255.0 blue:247/255.0 alpha:1];
    self.dueDateView.backgroundColor=[UIColor colorWithRed:33/255.0 green:160/255.0 blue:246/255.0 alpha:1];
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
- (IBAction)cancelButton:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)addItemButton:(id)sender {
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AddItemsViewController *addItemVC=[story instantiateViewControllerWithIdentifier:@"addItemVC"];
    [self presentViewController:addItemVC animated:NO completion:nil];
}
- (IBAction)addClientDetailsButton:(id)sender {
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AddClientDetailsViewController *addClientDetailVC=[story instantiateViewControllerWithIdentifier:@"addClientDetailVC"];
    [self presentViewController:addClientDetailVC animated:NO completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
