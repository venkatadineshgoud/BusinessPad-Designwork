//
//  ExpensesViewController.m
//  Businesspad Designwork
//
//  Created by Apple1 on 07/11/16.
//  Copyright © 2016 Madu Venkata Dinesh Goud. All rights reserved.
//

#import "ExpensesViewController.h"
#import "ExpensesUnClassifiedTableViewCell.h"
#import "ExpensesClassifiedTableViewCell.h"
#import "AddExpensesViewController.h"

@interface ExpensesViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
@property (weak, nonatomic) IBOutlet UIView *titleView;
@property (weak, nonatomic) IBOutlet UIButton *classifiedBtn;
- (IBAction)classifiedBtn:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *unclassifiedBtn;
@property (weak, nonatomic) IBOutlet UIButton *unClassifiedBtn;
@property (weak, nonatomic) IBOutlet UILabel *classifiedColourLbl;
@property (weak, nonatomic) IBOutlet UIView *classifiedView;
@property (weak, nonatomic) IBOutlet UILabel *unclassifiedColourLbl;
@property (weak, nonatomic) IBOutlet UITableView *classifiedTableView;
@property (weak, nonatomic) IBOutlet UIView *unclassifiedView;
@property (weak, nonatomic) IBOutlet UITableView *unclassifiedTableView;
- (IBAction)unclassifiedBtn:(UIButton *)sender;
- (IBAction)BackBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *classifiedLbl;
@property (weak, nonatomic) IBOutlet UILabel *unClassifiedLbl;
- (IBAction)AddBtn:(UIButton *)sender;

@end

@implementation ExpensesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:30/255.0 green:30/255.0 blue:30/255.0 alpha:1];
    _titleView.backgroundColor=[UIColor colorWithRed:46/255.0 green:46/255.0 blue:46/255.0 alpha:1];
    self.scroll.contentSize=CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+100);
    
    self.classifiedView.hidden=YES;
    self.classifiedColourLbl.hidden=YES;
    
    
    [self.classifiedTableView registerNib:[UINib nibWithNibName:@"ExpensesClassifiedTableViewCell" bundle:nil] forCellReuseIdentifier:@"ExpensesClassifiedTableViewCell"];
    
    [self.unclassifiedTableView registerNib:[UINib nibWithNibName:@"ExpensesUnClassifiedTableViewCell" bundle:nil] forCellReuseIdentifier:@"ExpensesUnClassifiedTableViewCell"];
    
    
    
    
    
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap:)];
    singleFingerTap.numberOfTapsRequired=1;
    self.classifiedLbl.userInteractionEnabled=YES;
    [self.classifiedLbl addGestureRecognizer:singleFingerTap];
    
    
    UITapGestureRecognizer *singleFingerTap1 =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap1:)];
    singleFingerTap1.numberOfTapsRequired=1;
    self.unClassifiedLbl.userInteractionEnabled=YES;
    [self.unClassifiedLbl addGestureRecognizer:singleFingerTap1];


    // Do any additional setup after loading the view.
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
    if (tableView.tag==0) {
        ExpensesUnClassifiedTableViewCell *cell1=(ExpensesUnClassifiedTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ExpensesUnClassifiedTableViewCell" forIndexPath:indexPath];
        
        cell1.contentView.backgroundColor=[UIColor whiteColor];
  // cell1.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell1;
    }
    else{
        ExpensesClassifiedTableViewCell *cell=(ExpensesClassifiedTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"ExpensesClassifiedTableViewCell" forIndexPath:indexPath];
        
        cell.contentView.backgroundColor=[UIColor whiteColor];
         //cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;

        
    }
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 50)];
    /* Create custom view to display section header... */
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 40)];
    [label setFont:[UIFont boldSystemFontOfSize:12]];
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(self.classifiedTableView.frame.size.width-90, 0, 100, 40)];
    [label setFont:[UIFont boldSystemFontOfSize:15]];
    [label1 setFont:[UIFont boldSystemFontOfSize:15]];
    label1.textAlignment = NSTextAlignmentCenter;
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor=[UIColor whiteColor];
    label1.textColor=[UIColor whiteColor];
    // NSString *string =[list objectAtIndex:section];
    /* Section header is in 0th index... */
    [label setText:@"September 2016"];
    [label1 setText:@"$200"];
    
    [view addSubview:label];
    [view addSubview:label1];
    [view setBackgroundColor:[UIColor colorWithRed:92/255.0 green:92/255.0 blue:92/255.0 alpha:1.0]]; //your background color...
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    return 60;


    
}
-(void)handleSingleTap:(UITapGestureRecognizer *)sender
{
    self.classifiedView.hidden=NO;
    self.classifiedColourLbl.hidden=NO;
    self.unclassifiedView.hidden=YES;
    self.unclassifiedColourLbl.hidden=YES;
    self.classifiedLbl.textColor=[UIColor whiteColor];
     self.unClassifiedLbl.textColor=[UIColor darkGrayColor];
    
}
-(void)handleSingleTap1:(UITapGestureRecognizer *)sender
{
    self.classifiedView.hidden=YES;
    self.classifiedColourLbl.hidden=YES;
    self.unclassifiedView.hidden=NO;
    self.unclassifiedColourLbl.hidden=NO;
    self.classifiedLbl.textColor=[UIColor darkGrayColor];
    self.unClassifiedLbl.textColor=[UIColor whiteColor];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
- (IBAction)BackBtn:(UIButton *)sender {
    [self dismissViewControllerAnimated:NO completion:nil];
}
- (IBAction)AddBtn:(UIButton *)sender {
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AddExpensesViewController *addExpensesViewController=[story instantiateViewControllerWithIdentifier:@"AddExpensesViewController"];
    [self presentViewController:addExpensesViewController animated:NO completion:nil];
}


@end
