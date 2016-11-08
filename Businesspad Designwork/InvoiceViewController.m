//
//  InvoiceViewController.m
//  Businesspad
//
//  Created by Madu Venkata Dinesh Goud on 02/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "InvoiceViewController.h"
#import "AddInvoiceViewController.h"
#import "InvoiceTableViewCell.h"

@interface InvoiceViewController ()

@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIButton *BackBtn;
@property (weak, nonatomic) IBOutlet UIScrollView *indexScroll;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation InvoiceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    
    
    
    [self.tableView registerNib:[UINib nibWithNibName:@"InvoiceTableViewCell" bundle:nil] forCellReuseIdentifier:@"InvoiceTableViewCell"];

    // Do any additional setup after loading the view.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (IBAction)addButton:(UIButton *)sender {
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AddInvoiceViewController *addInvoiceVC=[story instantiateViewControllerWithIdentifier:@"addInvoiceVC"];
    [self presentViewController:addInvoiceVC animated:NO completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
        InvoiceTableViewCell *cell=(InvoiceTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"InvoiceTableViewCell" forIndexPath:indexPath];
        
        cell.contentView.backgroundColor=[UIColor whiteColor];
    cell.subTitleLbl.backgroundColor=[UIColor colorWithRed:207/255.0 green:81/255.0 blue:71/255.0 alpha:1];
        // cell1.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    }

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 40;
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
    /* Create custom view to display section header... */
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 40)];
    [label setFont:[UIFont boldSystemFontOfSize:12]];
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(self.tableView.frame.size.width-90, 0, 100, 40)];
    [label setFont:[UIFont boldSystemFontOfSize:14]];
    [label1 setFont:[UIFont boldSystemFontOfSize:14]];
    label1.textAlignment = NSTextAlignmentCenter;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor=[UIColor whiteColor];
    label1.textColor=[UIColor whiteColor];
    // NSString *string =[list objectAtIndex:section];
    /* Section header is in 0th index... */
    [label setText:@"Total Pending"];
    [label1 setText:@"$480"];
    
    [view addSubview:label];
    [view addSubview:label1];
    [view setBackgroundColor:[UIColor colorWithRed:92/255.0 green:92/255.0 blue:92/255.0 alpha:1.0]]; //your background color...
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 70;
    
    
    
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
