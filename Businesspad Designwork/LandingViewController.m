//
//  LandingViewController.m
//  Businesspad
//
//  Created by Apple1 on 31/10/16.
//  Copyright © 2016 Apple1. All rights reserved.
//

#import "LandingViewController.h"
#import "RegistrationViewController.h"
#import "SignUpViewController.h"

@interface LandingViewController ()
{
    
    UIScrollView *someScrollView;
    UIView *paintView1,*paintView2,*paintView3;
    
}

@end

@implementation LandingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIApplication *app = [UIApplication sharedApplication];
    
    
    _v1highlight.layer.cornerRadius = _v1highlight.bounds.size.width/2;
    
    //R_v1highlight.layer.borderColor=[UIColor redColor].CGColor;
    
    _v1highlight.layer.borderWidth=2.0f;
    
    
    
    _v2highlight.layer.cornerRadius = _v2highlight.bounds.size.width/2;
    
    //R_v1highlight.layer.borderColor=[UIColor redColor].CGColor;
    
    _v2highlight.layer.borderWidth=2.0f;
    
    
    
    _v3highlight.layer.cornerRadius = _v3highlight.bounds.size.width/2;
    
    //R_v1highlight.layer.borderColor=[UIColor redColor].CGColor;
    
    _v3highlight.layer.borderWidth=2.0f;
    
    
    
    _v1highlight.backgroundColor=[UIColor lightGrayColor];
    
    
    
    someScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, -550,self.view.frame.size.width,self.view.frame.size.height-100)];
    
    
    
    [self.view addSubview:someScrollView];
    
    [UIView animateWithDuration:0.3
     
                          delay:0.1
     
                        options: UIViewAnimationCurveEaseIn
     
                     animations:^{
                         
                         someScrollView.frame = CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-100);
                         
                         
                         
                         _scollViewCancelBtn.frame=CGRectMake(6, 24, 24, 25);
                         
                     }
     
                     completion:^(BOOL finished){
                         
                     }];
    
    
    //   someScrollView.hidden=YES;
    
    
    
    
    
    
    
#pragma mark view1#
    
    paintView1=[[UIView alloc]initWithFrame:CGRectMake(30, 0,self.view.frame.size.width-70, 430)];
    
    
    
    // UIView  *paintView1=[[UIView alloc]initWithFrame:CGRectMake(30, 0,250, 430)];
    
    
    
    [paintView1 setBackgroundColor:[UIColor colorWithRed:22/255.0 green:120/255.0 blue:205/255.0 alpha:0.8]];
    
    [someScrollView addSubview:paintView1];
    
    
    
    UISwipeGestureRecognizer* sgr1 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(cellSwiped1:)];
    
    
    
    sgr1.direction =UISwipeGestureRecognizerDirectionLeft;
    
    
    [paintView1 addGestureRecognizer:sgr1];
    
    UIImageView *dot1=[[UIImageView alloc] initWithFrame:CGRectMake(paintView1.frame.size.width/2-90,25,180,200)];
    
    //  UIImageView *dot1=[[UIImageView alloc] initWithFrame:CGRectMake(35,25,180,200)];
    
    dot1.image=[UIImage imageNamed:@"expenses"];
    
    
    
    [paintView1 addSubview:dot1];
    
    
    
    UILabel  * flabel1 = [[UILabel alloc] initWithFrame:CGRectMake(paintView1.frame.size.width/2-90,255, 190,20)];
    
    // UILabel  * flabel1 = [[UILabel alloc] initWithFrame:CGRectMake(30,255, 190,20)];
    
    flabel1.backgroundColor = [UIColor clearColor];
    
    flabel1.textAlignment = UITextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
    
    flabel1.textColor=[UIColor whiteColor];
    
    flabel1.text = @"WELCOME";
    
    flabel1.numberOfLines=1;
    
    
    
    
    
    [flabel1 setFont:[UIFont systemFontOfSize:20]];
    
    
    
    
    
    [paintView1 addSubview:flabel1];
    
    
    
    
    
    UILabel  * slabel1 = [[UILabel alloc] initWithFrame:CGRectMake(paintView1.frame.size.width/2-110,290, 230,30)];
    
    
    
    //  UILabel  * slabel1 = [[UILabel alloc] initWithFrame:CGRectMake(20,290, 230,30)];
    
    slabel1.backgroundColor = [UIColor clearColor];
    
    slabel1.textAlignment = UITextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
    
    slabel1.textColor=[UIColor whiteColor];
    
    slabel1.text = @"Put your daily expenses in your hand we help you to organize  this";
    
    slabel1.numberOfLines=0;
    
    
    
    
    
    [slabel1 setFont:[UIFont systemFontOfSize:13]];
    
    [paintView1 addSubview:slabel1];
    
    [slabel1 sizeToFit];
    
    
    
    
    
    
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button1 addTarget:self
     
                action:@selector(Btn1)
     
      forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [button1 setTitle:@"BRIEF ME" forState:UIControlStateNormal];
    
    button1.frame = CGRectMake(paintView1.frame.size.width/2-80, 390, 150,30);
    
    //  button1.frame = CGRectMake(50, 390, 150,30);
    
    button1.titleLabel.font = [UIFont systemFontOfSize:15.0];
    
    //  button1.backgroundColor=[UIColor whiteColor];
    
    [paintView1 addSubview:button1];
    
    
    
    
    
    
    
    
    
#pragma mark view2#
    
    paintView2=[[UIView alloc]initWithFrame:CGRectMake(30+paintView1.frame.size.width+25, 0,self.view.frame.size.width-70, 430)];
    
    
    
    
    // UIView  *paintView2=[[UIView alloc]initWithFrame:CGRectMake(315, 0,250, 430)];
    
    [paintView2 setBackgroundColor:[UIColor yellowColor]];
    
    [paintView2 setBackgroundColor:[UIColor colorWithRed:186/255.0 green:11/255.0 blue:53/255.0 alpha:0.8]];
    
    
    
    [someScrollView addSubview:paintView2];
    
    UISwipeGestureRecognizer* sgr2Left = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(cellSwiped2Left:)];
    
    
    
    sgr2Left.direction =UISwipeGestureRecognizerDirectionLeft;
    
    
    
    [paintView2 addGestureRecognizer:sgr2Left];
    
    UISwipeGestureRecognizer* sgr2Right = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(cellSwiped2Right:)];
    
    
    
    sgr2Right.direction =UISwipeGestureRecognizerDirectionRight;
    
    
    
    [paintView2 addGestureRecognizer:sgr2Right];
    
    UIImageView *dot2 =[[UIImageView alloc] initWithFrame:CGRectMake(paintView1.frame.size.width/2-90,25,180,200)];
    
    //  UIImageView *dot2 =[[UIImageView alloc] initWithFrame:CGRectMake(35,25,180,200)];
    
    dot2.image=[UIImage imageNamed:@"organize"];
    
    
    
    [paintView2 addSubview:dot2];
    
    
    
    UILabel  * flabel2 = [[UILabel alloc] initWithFrame:CGRectMake(paintView1.frame.size.width/2-90,255, 190,20)];
    
    
    
    // UILabel  * flabel2 = [[UILabel alloc] initWithFrame:CGRectMake(30,255, 190,20)];
    
    flabel2.backgroundColor = [UIColor clearColor];
    
    flabel2.textAlignment = UITextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
    
    flabel2.textColor=[UIColor whiteColor];
    
    flabel2.text =@"ORGANIZE YOUR EXPENSES";
    
    flabel2.numberOfLines=1;
    
    [flabel2 setFont:[UIFont systemFontOfSize:14]];
    
    // flabel2.lineBreakMode=UILineBreakModeCharacterWrap;
    
    [flabel2 sizeToFit];
    
    
    
    [paintView2 addSubview:flabel2];
    
    
    
    UILabel  * slabel2 = [[UILabel alloc] initWithFrame:CGRectMake(paintView1.frame.size.width/2-110,290, 230,30)];
    
    
    
    //UILabel  * slabel2 = [[UILabel alloc] initWithFrame:CGRectMake(20,290, 230,30)];
    
    slabel2.backgroundColor = [UIColor clearColor];
    
    slabel2.textAlignment = UITextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
    
    slabel2.textColor=[UIColor whiteColor];
    
    slabel2.text =@"Put your daily expenses in your hand we help you to organize this";
    
    [slabel2 setFont:[UIFont systemFontOfSize:13]];
    
    slabel2.numberOfLines=0;
    
    
    
    
    
    
    
    [paintView2 addSubview:slabel2];
    
    [slabel2 sizeToFit];
    
    
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button2 addTarget:self
     
                action:@selector(Btn2)
     
      forControlEvents:UIControlEventTouchUpInside];
    
    [button2 setTitle:@"NEXT" forState:UIControlStateNormal];
    
    button2.frame = CGRectMake(paintView1.frame.size.width/2-80, 390, 150,30);
    
    
    // button2.frame = CGRectMake(50, 390, 150,30);
    
    button2.titleLabel.font = [UIFont systemFontOfSize:15.0];
    
    [paintView2 addSubview:button2];
    
    
    
    
    
    
    
    
    
#pragma mark view3#
    
    paintView3=[[UIView alloc]initWithFrame:CGRectMake(paintView2.frame.origin.x+paintView2.frame.size.width+25, 0,self.view.frame.size.width-70, 430)];
    
    
    //  UIView  *paintView3=[[UIView alloc]initWithFrame:CGRectMake(600, 0,250, 430)];
    
    [paintView3 setBackgroundColor:[UIColor yellowColor]];
    
    [paintView3 setBackgroundColor:[UIColor colorWithRed:29/255.0 green:174/255.0 blue:123/255.0 alpha:0.8]];
    
    
    
    [someScrollView addSubview:paintView3];
    
    
    
    UISwipeGestureRecognizer* sgr3 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(cellSwiped3:)];
    
    
    
    sgr3.direction = UISwipeGestureRecognizerDirectionRight;
    
    
    
    [paintView3 addGestureRecognizer:sgr3];
    
    
    
    
    
    UIImageView *dot3 =[[UIImageView alloc] initWithFrame:CGRectMake(paintView1.frame.size.width/2-90,25,180,200)];
    
    
    // UIImageView *dot3 =[[UIImageView alloc] initWithFrame:CGRectMake(35,25,180,200)];
    
    dot3.image=[UIImage imageNamed:@"income"];
    
    
    
    [paintView3 addSubview:dot3];
    
    
    
    
    
    UILabel  * flabel3 = [[UILabel alloc] initWithFrame:CGRectMake(paintView1.frame.size.width/2-90,255,190,20)];
    
    //  UILabel  * flabel3 = [[UILabel alloc] initWithFrame:CGRectMake(30,255,190,20)];
    
    flabel3.backgroundColor = [UIColor clearColor];
    
    flabel3.textAlignment = UITextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
    
    flabel3.textColor=[UIColor whiteColor];
    
    flabel3.text = @"ORGANIZE YOUR INCOME";
    
    flabel3.numberOfLines=1;
    
    [flabel3 setFont:[UIFont systemFontOfSize:14]];
    
    [flabel3 sizeToFit];
    
    
    
    [paintView3 addSubview:flabel3];
    
    
    
    UILabel  * slabel3 = [[UILabel alloc] initWithFrame:CGRectMake(paintView1.frame.size.width/2-110,290, 230,30)];
    
    //   UILabel  * slabel3 = [[UILabel alloc] initWithFrame:CGRectMake(20,290, 230,30)];
    
    slabel3.backgroundColor = [UIColor clearColor];
    
    slabel3.textAlignment = UITextAlignmentCenter; // UITextAlignmentCenter, UITextAlignmentLeft
    
    slabel3.textColor=[UIColor whiteColor];
    
    slabel3.text = @"Put your daily expenses in your hand we help you to organize this";
    
    slabel3.numberOfLines=0;
    
    [slabel3 setFont:[UIFont systemFontOfSize:13]];
    
    [slabel3 sizeToFit];
    
    
    
    // slabel3.lineBreakMode=UILineBreakModeCharacterWrap;
    
    
    
    [paintView3 addSubview:slabel3];
    
    
    
    
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [button3 addTarget:self
     
                action:@selector(Btn3)
     
      forControlEvents:UIControlEventTouchUpInside];
    
    [button3 setTitle:@"I CONFIRM" forState:UIControlStateNormal];
    
    button3.frame = CGRectMake(paintView1.frame.size.width/2-60, 390, 110,30);
    
    //    button3.frame = CGRectMake(70, 390, 110,30);
    
    button3.titleLabel.font = [UIFont systemFontOfSize:15.0];
    
    [paintView3 addSubview:button3];
    
    
    
    
    // Do any additional setup after loading the view.
    
}

- (UIStatusBarStyle)preferredStatusBarStyle

{
    
    return UIStatusBarStyleLightContent;
    
}


//- (void)setStatusBarBackgroundColor:(UIColor *)color {

//

//    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];

//

//    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)]) {

//        statusBar.backgroundColor = color;

//    }

//}

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

-(void)Btn1

{
    
    
    
    // [someScrollView setContentOffset:CGPointMake(265, 0) animated:YES];
    
    _v2highlight.backgroundColor=[UIColor lightGrayColor];
    
    [someScrollView setContentOffset:CGPointMake(30+(paintView1.frame.size.width-15), 0) animated:YES];
    
    
    
    
    
    
}

-(void)Btn2

{
    
    
    
    //  [someScrollView setContentOffset:CGPointMake(550, 0) animated:YES];
    
    _v3highlight.backgroundColor=[UIColor lightGrayColor];
    
    [someScrollView setContentOffset:CGPointMake(paintView2.frame.origin.x+(paintView2.frame.size.width-15), 0) animated:YES];
    
}


-(void)Btn3

{   UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    SignUpViewController *signUpViewController=[story instantiateViewControllerWithIdentifier:@"SignUpViewController"];
    
    [self presentViewController:signUpViewController animated:NO completion:nil];
    
    
    
    
    
    
    
    
    
    
}

- (IBAction)scrollViewCancelBtn:(UIButton *)sender {
    
}

-(void)cellSwiped1:(UISwipeGestureRecognizer *)sender{
    
    [someScrollView setContentOffset:CGPointMake(30+(paintView1.frame.size.width-15), 0) animated:YES];
    
    
    
}

-(void)cellSwiped3:(UISwipeGestureRecognizer *)sender{
    
    
    
    [someScrollView setContentOffset:CGPointMake(30+(paintView1.frame.size.width-15), 0) animated:YES];
    
    
    
    
    
    
    
    
    
}

-(void)cellSwiped2Left:(UISwipeGestureRecognizer *)sender{
    
    [someScrollView setContentOffset:CGPointMake(paintView2.frame.origin.x+(paintView2.frame.size.width-15), 0) animated:YES];
    
}

-(void)cellSwiped2Right:(UISwipeGestureRecognizer *)sender{
    
    //  [someScrollView setContentOffset:CGPointMake(30+(paintView1.frame.size.width-25), 0) animated:YES];
    
    //  [someScrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    
    
    [someScrollView setContentOffset:CGPointMake(0, 0) animated:YES];
    
    
}

@end
