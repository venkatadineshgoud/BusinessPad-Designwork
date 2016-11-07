//
//  LandingViewController.h
//  Businesspad
//
//  Created by Apple1 on 31/10/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LandingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *scollViewCancelBtn;
- (IBAction)scrollViewCancelBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIButton *v1highlight;
@property (weak, nonatomic) IBOutlet UIButton *v2highlight;
@property (weak, nonatomic) IBOutlet UIButton *v3highlight;

@end
