//
//  SecondViewController.m
//  Pshare
//
//  Created by Tiago Magalhães on 27/05/16.
//  Copyright © 2016 Tiago Magalhães. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()
@property (nonatomic, strong) AppDelegate *appDelegate;


@end

@implementation SecondViewController

//declare string array with games
NSArray *games;
//declare a string array with connected players, the first should be all players
NSArray *peersNames;
NSArray *peersIds;

- (void)viewDidLoad {
    [super viewDidLoad];
    games = @[@"Select a Game",@"Tic Tac Toe",@"Game2",@"Game3",@"Game4",@"Game5",@"Game6"];
    //Todo- get all peers names
    peersNames = @[@"All Peers"];
    peersIds =@[@-1];

    
    // Do any additional setup after loading the view, typically from a nib.
    _appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playButton:(UIButton *)sender {
    //send to the selected game activity
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    //TODO
    return 2;
}

@end
