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
//TODO- declare string array with games
//TODO- declare a string array with connected players, the first should be all players

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    _gameDesc.text = @"View loaded";
    
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
