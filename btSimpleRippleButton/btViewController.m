//
//  btViewController.m
//  BTSimpleRippleButton
//
//  Created by Balram Tiwari on 01/06/14.
//  Copyright (c) 2014 Balram. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "btViewController.h"
#import "BTRippleButton/BTRippleButtton.h"

@interface btViewController ()

@end

@implementation btViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView *background = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"background.jpg"]];
    background.frame = self.view.frame;
    [self.view addSubview:background];
    self.view.backgroundColor = [UIColor colorWithWhite:0.2 alpha:0.9];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    BTRippleButtton *rippleButton = [[BTRippleButtton alloc]initWithImage:[UIImage imageNamed:@"pin.png"]
                                                                 andFrame:CGRectMake(144, 55, 32, 32)
                                                                andTarget:@selector(buttonTapped:)
                                                                    andID:self];
    [rippleButton setRippeEffectEnabled:YES];
    [rippleButton setRippleEffectWithColor:[UIColor colorWithRed:240/255.f green:159/255.f blue:10/255.f alpha:1]];
    [self.view addSubview:rippleButton];
    
    BTRippleButtton *rippleButton1 = [[BTRippleButtton alloc]initWithImage:[UIImage imageNamed:@"green.png"]
                                                                 andFrame:CGRectMake(124, 150, 75, 75)
                                                                andTarget:@selector(buttonTapped:)
                                                                    andID:self];
    [rippleButton1 setRippeEffectEnabled:YES];
    [rippleButton1 setRippleEffectWithColor:[UIColor colorWithRed:240/255.f green:159/255.f blue:254/255.f alpha:1]];
    [self.view addSubview:rippleButton1];

    
    
    BTRippleButtton *rippleButtonGreen = [[BTRippleButtton alloc] initWithImage:[UIImage imageNamed:@"author.png"]
                                                                       andFrame:CGRectMake(110, 300, 99, 99)
                                                                   onCompletion:^(BOOL success) {
                                                                   
                                                                       NSLog(@"I am from Block, execution.");
                                                                       
                                                                       UIViewController *temporary = [[UIViewController alloc]init];
                                                                       temporary.view.backgroundColor = [UIColor colorWithRed:20/255.f green:159/255.f blue:200/255.f alpha:1];
                                                                       UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250)];
                                                                       label.numberOfLines = 0;
                                                                       label.font = [UIFont fontWithName:@"Din Condensed" size:64];
                                                                       label.text = @"This will surely go down";
                                                                       label.textAlignment = NSTextAlignmentCenter;
                                                                       label.textColor = [UIColor whiteColor];
                                                                       [temporary.view addSubview:label];
                                                                       label.center = temporary.view.center;
                                                                       
                                                                       [self.navigationController presentViewController:temporary
                                                                                                               animated:YES
                                                                                                             completion:^{
                                                                                                                 
                                                                                                                 [self performSelector:@selector(dismissPresented:) withObject:nil afterDelay:0.7];
                                                                
                                                                       }];
                                                                       
                                                                   
                                                                   }];
    
    [rippleButtonGreen setRippeEffectEnabled:YES];
    [rippleButtonGreen setRippleEffectWithColor:[UIColor colorWithRed:204/255.f green:270/255.f blue:12/255.f alpha:1]];
    [self.view addSubview:rippleButtonGreen];
}

-(void)dismissPresented:(id)sender {
    [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)buttonTapped:(id)sender {
    NSLog(@"Button Tapped");
}
     
     
//     NSArray *colors = @[
//                         [UIColor colorWithRed:240/255.f green:159/255.f blue:254/255.f alpha:1],
//                         [UIColor colorWithRed:255/255.f green:137/255.f blue:167/255.f alpha:1],
//                         [UIColor colorWithRed:126/255.f green:242/255.f blue:195/255.f alpha:1],
//                         [UIColor colorWithRed:119/255.f green:152/255.f blue:255/255.f alpha:1],
//                         [UIColor colorWithRed:240/255.f green:159/255.f blue:254/255.f alpha:1],
//                         [UIColor colorWithRed:255/255.f green:137/255.f blue:167/255.f alpha:1],
//                         [UIColor colorWithRed:126/255.f green:242/255.f blue:195/255.f alpha:1],
//                         [UIColor colorWithRed:119/255.f green:152/255.f blue:255/255.f alpha:1],
//                         [UIColor colorWithRed:240/255.f green:159/255.f blue:254/255.f alpha:1],
//                         [UIColor colorWithRed:255/255.f green:137/255.f blue:167/255.f alpha:1],
//                         [UIColor colorWithRed:126/255.f green:242/255.f blue:195/255.f alpha:1],
//                         [UIColor colorWithRed:119/255.f green:152/255.f blue:255/255.f alpha:1],
//                         ];

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
