//
//  AppDelegate.h
//  Pshare
//
//  Created by Tiago Magalhães on 27/05/16.
//  Copyright © 2016 Tiago Magalhães. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MPManager.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong) MPManager *mpManager;

@property (nonatomic, retain) NSString *data;




@end

