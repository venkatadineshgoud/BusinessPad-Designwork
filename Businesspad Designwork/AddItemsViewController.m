//
//  AddItemsViewController.m
//  Businesspad
//
//  Created by Madu Venkata Dinesh Goud on 05/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "AddItemsViewController.h"

@interface AddItemsViewController ()
@property (strong, nonatomic) IBOutlet UIView *itemDetailsView;
@property (strong, nonatomic) IBOutlet UIView *totalAmountView;

@end

@implementation AddItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.itemDetailsView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.totalAmountView.backgroundColor=[UIColor colorWithRed:36/255.0 green:155/255.0 blue:233/255.0 alpha:1];
    
    self.itemDetailsView.layer.cornerRadius=3.0f;
    self.itemDetailsView.layer.masksToBounds=YES;
    self.totalAmountView.layer.cornerRadius=3.0f;
    self.totalAmountView.layer.masksToBounds=YES;
    
    
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
- (IBAction)cancelButton:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
