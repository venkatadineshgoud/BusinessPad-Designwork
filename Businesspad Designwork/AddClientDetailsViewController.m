//
//  AddClientDetailsViewController.m
//  Businesspad
//
//  Created by Madu Venkata Dinesh Goud on 05/11/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "AddClientDetailsViewController.h"
#import "EditClientDetailsViewController.h"

@interface AddClientDetailsViewController ()
@property (strong, nonatomic) IBOutlet UIView *searchBarView;
@property (strong, nonatomic) IBOutlet UISearchBar *searchBarController;
@property (strong,nonatomic) NSMutableArray *mutArr;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation AddClientDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    self.searchBarView.backgroundColor=[UIColor colorWithRed:36/255.0 green:155/255.0 blue:233/255.0 alpha:1];
    
    self.searchBarController.layer.cornerRadius=4.0f;
    self.searchBarController.layer.masksToBounds=YES;
    
    self.mutArr=[[NSMutableArray alloc]initWithObjects:@"Antix Corporation", @"Asus", @"Aston Martin", @"BHEL", @"BMW", @"Burroughs Corporation", nil];
    // Do any additional setup after loading the view.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.mutArr.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"customerName"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"customerName"];
    }
    cell.textLabel.text= [self.mutArr objectAtIndex:indexPath.row];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelButton:(UIBarButtonItem *)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)addButton:(id)sender {
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    EditClientDetailsViewController *editClientDetailsVC=[story instantiateViewControllerWithIdentifier:@"editClientDetailsVC"];
    [self presentViewController:editClientDetailsVC animated:NO completion:nil];
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
