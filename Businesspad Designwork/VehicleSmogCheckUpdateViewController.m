//
//  VehicleSmogCheckUpdateViewController.m
//  Businesspad
//
//  Created by Apple1 on 05/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "VehicleSmogCheckUpdateViewController.h"

@interface VehicleSmogCheckUpdateViewController ()

@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@end

@implementation VehicleSmogCheckUpdateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
     self.scroll.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+100);
    // Do any additional setup after loading the view.
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

@end
