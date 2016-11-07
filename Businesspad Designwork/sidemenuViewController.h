//
//  sidemenuViewController.h
//  Businesspad
//
//  Created by Apple2 on 01/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface sidemenuViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *Signoutbuttnoutlet;
@property (weak, nonatomic) IBOutlet UIView *firstviewpagecontroler;
@property (weak, nonatomic) IBOutlet UIView *secondviewpagecontroller;
@property (weak, nonatomic) IBOutlet UIButton *Homebuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *Tripsbuttnoutlets;
@property (weak, nonatomic) IBOutlet UIButton *Bankingbuttnoutlets;
@property (weak, nonatomic) IBOutlet UIButton *Expencesbuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *Incomebuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *Invoicebuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *Bussinesbuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *Vechiclebuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *Reciptsbuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *Settingsbuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *Accountentsbuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *Vcardsbuttnoutlet;
@property (weak, nonatomic) IBOutlet UIButton *crossbuttnoutlet;
- (IBAction)vehicleBtn:(UIButton *)sender;

@end
