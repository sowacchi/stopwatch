//
//  ViewController.m
//  stopwatch
//
//  Created by 峙　泰稀 on 13/12/26.
//  Copyright (c) 2013年 universityofkitakyushu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize time;



-(IBAction)start:(id)sender{
    
    timeTicker = [NSTimer scheduledTimerWithTimeInterval:00.01 target:self selector:@selector(showActivity) userInfo:nil repeats:YES];
    
}

-(IBAction)stop:(id)sender{
    
    [timeTicker invalidate];
    
}

-(IBAction)reset:(id)sender{
    
time.text = @"0.00";
    
}

-(void)showActivity{
    float currentTime = [time.text floatValue];
    float displayTime = currentTime + 00.01;

    time.text = [NSString stringWithFormat:@"%.2f",displayTime];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
