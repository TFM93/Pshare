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

NSString *game;//game to play
NSString *ppeer;//possible peer to play

- (void)viewDidLoad {
    [super viewDidLoad];
    games = @[@"SelectGame",@"Tic Tac Toe",@"Game2",@"Game3",@"Game4",@"Game5",@"Game6"];
    //Todo- get all peers names
    peersNames = @[@"All Peers",@"aaaa"];
    peersIds =@[@-1,@2];

    
    // Do any additional setup after loading the view, typically from a nib.
    _appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    
    game = games[0];
    ppeer = peersNames[0];
    _gameDesc.text = @"";

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playButton:(UIButton *)sender {
    //send to the selected game activity
    NSLog(@"play detected");
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if(component == 0){
        return games.count;
    }
        return peersIds.count;
    
}

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component __TVOS_PROHIBITED{
    if(component == 0){
        return games[row];
    }
    return peersNames[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component __TVOS_PROHIBITED{
    
    if(component == 0){
        game = games[row];
    }
    else{
        ppeer = peersNames[row];
    }

    if([game isEqual: @"Tic Tac Toe"] ){
        //instert game description
        _gameDesc.text = @"Tic-tac-toe (also known as Noughts and crosses or Xs and Os) is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row wins the game.";
        if([ppeer isEqualToString:@"All Peers"] == 0){
            _buttonP.enabled = true;
        }
        else{
            _buttonP.enabled = false;
        }
    }
    else if (row == 0 && component == 0){//description content
        _gameDesc.text = @"";
        _buttonP.enabled = false;

    }
    else{
        _buttonP.enabled = false;
        _gameDesc.text=@"Not Available";
    }
    
}

@end
