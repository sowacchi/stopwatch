//
//  ViewController.h
//  stopwatch
//
//  Created by 峙　泰稀 on 13/12/26.
//  Copyright (c) 2013年 universityofkitakyushu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UILabel *time;
    NSTimer *timeTicker;
}

@property(nonatomic, retain) UILabel *time;

-(IBAction)start:(id)sender;
-(IBAction)stop:(id)sender;
-(IBAction)reset:(id)sender;

-(void)showActivity;

@end
