//
//  VehicleDetailsViewController.m
//  Businesspad
//
//  Created by Apple1 on 02/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "VehicleDetailsViewController.h"
#import "VehicleParkingFessViewController.h"
#import "VehicleViewController.h"
#import "VehicleParkingFeesTableViewCell.h"
#import "VehicleInsuranceTableViewCell.h"
#import "VehicleSmogViewTableViewCell.h"

@interface VehicleDetailsViewController ()
@property (weak, nonatomic) IBOutlet UITableView *vehicleSmogTableView;

@property (weak, nonatomic) IBOutlet UIView *backgroundView;
@property (weak, nonatomic) IBOutlet UIView *smogCheckView;
@property (weak, nonatomic) IBOutlet UILabel *smogCheckColourLbl;
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIView *vehicleIndexView;
@property (weak, nonatomic) IBOutlet UILabel *insuranceColourLbl;
- (IBAction)BackBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIView *carInfoView;
@property (weak, nonatomic) IBOutlet UIView *indexView;
@property (weak, nonatomic) IBOutlet UILabel *indexColourLbl;
@property (weak, nonatomic) IBOutlet UITableView *insuranceTableView;
@property (weak, nonatomic) IBOutlet UILabel *parkingFeesLbl;
@property (weak, nonatomic) IBOutlet UILabel *insuranceLbl;
@property (weak, nonatomic) IBOutlet UIView *insuranceView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UILabel *smockcheckLbl;
@property (weak, nonatomic) IBOutlet UIView *parkingFeesView;
@property (weak, nonatomic) IBOutlet UIScrollView *indexScrollView;
@property (weak, nonatomic) IBOutlet UILabel *carInfoLbl;
- (IBAction)ParkingFeesDetailsBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *carInfoColourLbl;
@property (weak, nonatomic) IBOutlet UILabel *parkingFeesColourLbl;

@end

@implementation VehicleDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.backgroundView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.scroll.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+100);
    _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
    _indexView.backgroundColor=[UIColor colorWithRed:21/255.0 green:21/255.0 blue:21/255.0 alpha:1];
    _indexColourLbl.backgroundColor=[UIColor colorWithRed:24/255.0 green:140/255.0 blue:252/255.0 alpha:1];
 self.carInfoView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.indexScrollView.contentSize=CGSizeMake(self.view.frame.size.width+250, 0);
        self.parkingFeesView.hidden=YES;
    self.parkingFeesColourLbl.hidden=YES;
    self.insuranceColourLbl.hidden=YES;
    self.insuranceView.hidden=YES;
    self.tableView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.insuranceView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.insuranceTableView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.smogCheckView.hidden=YES;
    self.smogCheckColourLbl.hidden=YES;
       
    
    [self.tableView registerNib:[UINib nibWithNibName:@"VehicleParkingFeesTableViewCell" bundle:nil] forCellReuseIdentifier:@"VehicleParkingFeesTableViewCell"];

    [self.insuranceTableView registerNib:[UINib nibWithNibName:@"VehicleInsuranceTableViewCell" bundle:nil] forCellReuseIdentifier:@"VehicleInsuranceTableViewCell"];
    
    
     [self.vehicleSmogTableView registerNib:[UINib nibWithNibName:@"VehicleSmogViewTableViewCell" bundle:nil] forCellReuseIdentifier:@"VehicleSmogViewTableViewCell"];
    UITapGestureRecognizer *singleFingerTap1 =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap1:)];
    singleFingerTap1.numberOfTapsRequired=1;
    self.carInfoLbl.userInteractionEnabled=YES;
    [self.carInfoLbl addGestureRecognizer:singleFingerTap1];
    
    
    
    UITapGestureRecognizer *singleFingerTap2 =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap2:)];
    singleFingerTap2.numberOfTapsRequired=1;
    self.parkingFeesLbl.userInteractionEnabled=YES;
    [self.parkingFeesLbl addGestureRecognizer:singleFingerTap2];
    
    
    
    UITapGestureRecognizer *singleFingerTap3 =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap3:)];
    self.insuranceLbl.userInteractionEnabled=YES;
    singleFingerTap3.numberOfTapsRequired=1;
    [self.insuranceLbl addGestureRecognizer:singleFingerTap3];
    
    
    UITapGestureRecognizer *singleFingerTap4 =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap4:)];
    singleFingerTap4.numberOfTapsRequired=1;
    self.smockcheckLbl.userInteractionEnabled=YES;
    [self.smockcheckLbl addGestureRecognizer:singleFingerTap4];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{   if(tableView.tag==1)
{
    return 2;
}else if (tableView.tag==2)
{
     return 1;
}
    else
        return 1;
   
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(tableView.tag==1)
    {
    VehicleParkingFeesTableViewCell *cell1=(VehicleParkingFeesTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"VehicleParkingFeesTableViewCell" forIndexPath:indexPath];
    
    cell1.contentView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    cell1.view3.backgroundColor=[UIColor colorWithRed:34/255.0 green:209/255.0 blue:146/255.0 alpha:1];
    return cell1;
    }
    else if (tableView.tag==2){
        VehicleInsuranceTableViewCell *cell2=(VehicleInsuranceTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"VehicleInsuranceTableViewCell" forIndexPath:indexPath];
    
    cell2.contentView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
        cell2.insuranceCellTitleView.backgroundColor=[UIColor colorWithRed:34/255.0 green:209/255.0 blue:146/255.0 alpha:1];
  
    return cell2;
    }
    else
    {
        VehicleSmogViewTableViewCell *cell3=(VehicleSmogViewTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"VehicleSmogViewTableViewCell" forIndexPath:indexPath];
        
        cell3.contentView.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
        cell3.vehicleSmogViewCellView.backgroundColor=[UIColor colorWithRed:34/255.0 green:209/255.0 blue:146/255.0 alpha:1];
        return cell3;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView.tag==1) {
        UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
        VehicleParkingFessViewController *vehicleParkingFessViewController=[story instantiateViewControllerWithIdentifier:@"VehicleParkingFessViewController"];
        [self presentViewController:vehicleParkingFessViewController animated:NO completion:nil];
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{if(tableView.tag==1)
{
     return 250;
}
else{
    return 200;
}
   
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
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    VehicleViewController *vehicleViewController=[story instantiateViewControllerWithIdentifier:@"VehicleViewController"];
    [self presentViewController:vehicleViewController animated:NO completion:nil];
}


-(void)handleSingleTap1:(UITapGestureRecognizer *)sender
{
    self.parkingFeesView.hidden=YES;
    self.carInfoView.hidden=NO;
    self.carInfoColourLbl.hidden=NO;
    self.parkingFeesColourLbl.hidden=YES;
    self.parkingFeesLbl.textColor=[UIColor darkGrayColor];
    self.carInfoLbl.textColor=[UIColor whiteColor];
     self.insuranceColourLbl.hidden=YES;
    
}

-(void)handleSingleTap2:(UITapGestureRecognizer *)sender
{
    self.parkingFeesView.hidden=NO;
     self.carInfoView.hidden=YES;
    self.parkingFeesColourLbl.hidden=NO;
    self.carInfoColourLbl.hidden=YES;
    self.parkingFeesLbl.textColor=[UIColor whiteColor];
     self.carInfoLbl.textColor=[UIColor darkGrayColor];
     self.insuranceColourLbl.hidden=YES;

}
-(void)handleSingleTap3:(UITapGestureRecognizer *)sender
{
    self.parkingFeesView.hidden=YES;
    self.carInfoView.hidden=YES;
    self.parkingFeesColourLbl.hidden=YES;
    self.carInfoColourLbl.hidden=YES;
    self.parkingFeesLbl.textColor=[UIColor darkGrayColor];
    self.carInfoLbl.textColor=[UIColor darkGrayColor];
    self.insuranceColourLbl.hidden=NO;
     self.insuranceView.hidden=NO;
    self.insuranceLbl.textColor=[UIColor whiteColor];

}
-(void)handleSingleTap4:(UITapGestureRecognizer *)sender
{
    self.parkingFeesView.hidden=YES;
    self.carInfoView.hidden=YES;
    self.parkingFeesColourLbl.hidden=YES;
    self.carInfoColourLbl.hidden=YES;
    self.parkingFeesLbl.textColor=[UIColor darkGrayColor];
    self.carInfoLbl.textColor=[UIColor darkGrayColor];
    self.insuranceColourLbl.hidden=YES;
    self.insuranceView.hidden=YES;
    self.insuranceLbl.textColor=[UIColor darkGrayColor];
    self.smogCheckView.hidden=NO;
    self.smogCheckColourLbl.hidden=NO;
    self.smockcheckLbl.textColor=[UIColor whiteColor];
    
}
@end
