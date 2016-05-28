//
//  FirstViewController.m
//  Pshare
//
//  Created by Tiago Magalhães on 27/05/16.
//  Copyright © 2016 Tiago Magalhães. All rights reserved.
//

#import "FirstViewController.h"
#import "AppDelegate.h"


@interface FirstViewController ()
    @property (nonatomic, strong) AppDelegate *appDelegate;
    -(void)sendMyMessage;
    -(void)didReceiveDataWithNotification:(NSNotification *)notification;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    _mTS.delegate = self;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveDataWithNotification:)
                                                 name:@"MCDidReceiveDataNotification"
                                               object:nil];

}



-(void)didReceiveDataWithNotification:(NSNotification *)notification{
    MCPeerID *peerID = [[notification userInfo] objectForKey:@"peerID"];
    NSString *peerDisplayName = peerID.displayName;
    
    NSData *receivedData = [[notification userInfo] objectForKey:@"data"];
    NSString *receivedText = [[NSString alloc] initWithData:receivedData encoding:NSUTF8StringEncoding];
    
    [_chatTV performSelectorOnMainThread:@selector(setText:) withObject:[_chatTV.text stringByAppendingString:[NSString stringWithFormat:@"%@ wrote:\n%@\n\n", peerDisplayName, receivedText]] waitUntilDone:NO];
}

-(void) sendMyMessage{
    NSData *dataToSend = [_mTS.text dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *allPeers = _appDelegate.mpManager.session.connectedPeers;
    NSError *error;
    
    [_appDelegate.mpManager.session sendData:dataToSend
                                     toPeers:allPeers
                                    withMode:MCSessionSendDataReliable
                                       error:&error];
    
    if (error) {
        NSLog(@"%@", [error localizedDescription]);
    }
    
    [_chatTV setText:[_chatTV.text stringByAppendingString:[NSString stringWithFormat:@"I wrote:\n%@\n\n", _mTS.text]]];
    [_mTS setText:@""];
    [_mTS resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self sendMyMessage];
    return YES;
}


- (IBAction)sendMessage:(id)sender {
    [self sendMyMessage];
}

- (IBAction)cancelMessage:(id)sender {
    [_mTS resignFirstResponder];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
