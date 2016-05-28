//
//  FirstViewController.h
//  Pshare
//
//  Created by Tiago Magalhães on 27/05/16.
//  Copyright © 2016 Tiago Magalhães. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextView *chatTV;
@property (weak, nonatomic) IBOutlet UITextField *mTS;

- (IBAction)cancelMessage:(id)sender;
- (IBAction)sendMessage:(id)sender;

@end

