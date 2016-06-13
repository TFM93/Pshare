//
//  TTTViewController.h
//  Pshare
//
//  Created by Tiago Magalhães on 29/05/16.
//  Copyright © 2016 Tiago Magalhães. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTTViewController : UIViewController
{
    IBOutlet UIImage *oImg;
    IBOutlet UIImage *xImg;
    
    IBOutlet UIImageView *s1;
    IBOutlet UIImageView *s2;
    IBOutlet UIImageView *s3;
    IBOutlet UIImageView *s4;
    IBOutlet UIImageView *s5;
    IBOutlet UIImageView *s6;
    IBOutlet UIImageView *s7;
    IBOutlet UIImageView *s8;
    IBOutlet UIImageView *s9;
    
    IBOutlet UIImage *theImg;
    
    IBOutlet UIButton *resetBtn;
    
    IBOutlet UIImageView *board;
    

    IBOutlet UILabel *WhoseTurn;

    NSInteger playerToken;
    
    BOOL cellWasUsed;
    
    NSInteger numberOfPlays;
    
    UIAlertView *myAlertView;
    
    
}

@property (nonatomic, retain) UIImage *oImg;
@property (nonatomic, retain) UIImage *xImg;
@property (nonatomic, retain) UIImage *theImg;
@property (nonatomic, retain) UIButton *resetBtn;
@property (nonatomic, retain) UIImageView *board;

@property (nonatomic, retain) UIImageView *s1;
@property (nonatomic, retain) UIImageView *s2;
@property (nonatomic, retain) UIImageView *s3;
@property (nonatomic, retain) UIImageView *s4;
@property (nonatomic, retain) UIImageView *s5;
@property (nonatomic, retain) UIImageView *s6;
@property (nonatomic, retain) UIImageView *s7;
@property (nonatomic, retain) UIImageView *s8;
@property (nonatomic, retain) UIImageView *s9;

@property (nonatomic, retain) UIAlertView *myAlertView;
@property (nonatomic, retain) UILabel *whoseTurn;

-(void)processingLogic;
-(void)updatePlayerInfo;
-(BOOL)checkForWin;
-(IBAction) buttonReset;
-(void)ResetBoard;

@end