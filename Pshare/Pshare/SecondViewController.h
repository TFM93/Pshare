//
//  SecondViewController.h
//  Pshare
//
//  Created by Tiago Magalhães on 27/05/16.
//  Copyright © 2016 Tiago Magalhães. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (strong, nonatomic) IBOutlet UILabel *gameDesc;
@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;
- (IBAction)playButton:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UIButton *buttonP;

@end

