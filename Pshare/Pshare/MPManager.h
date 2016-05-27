//
//  MPManager.h
//  Pshare
//
//  Created by Tiago Magalhães on 27/05/16.
//  Copyright © 2016 Tiago Magalhães. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MultipeerConnectivity/MultipeerConnectivity.h>

@interface MPManager : NSObject <MCSessionDelegate>

    @property (nonatomic, strong) MCPeerID *peerID;// identifies the device
    @property (nonatomic, strong) MCSession *session;//session created by this peer
    @property (nonatomic, strong) MCBrowserViewController *browser; // default ui provided by apple
    @property (nonatomic, strong) MCAdvertiserAssistant *advertiser;//to advertise itself


    -(void)setupPeerAndSessionWithDisplayName:(NSString *)displayName;
    -(void)setupMCBrowser;
    -(void)advertiseSelf:(BOOL)shouldAdvertise;

@end
