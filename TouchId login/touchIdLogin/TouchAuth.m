//
//  TouchAuth.m
//  TouchId login
//
//  Created by Sujit on 1/21/16.
//  Copyright © 2016 Sujit. All rights reserved.
//

#import "TouchAuth.h"

@implementation TouchAuth

- (void)authenticateWithTouch {
    
    LAContext *context = [[LAContext alloc] init];
    NSError *error = nil;
    
    if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
        // Authenticate User
        
        [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics
                localizedReason:@"Are you the device owner?"
                          reply:^(BOOL success, NSError *error) {
                              
            dispatch_async(dispatch_get_main_queue(), ^{
               
                if (error) {
                    //@"There was a problem verifying your identity."
                    
                    return;
                }
                
                if (success) {
                    //@"You are the device owner!"
                    
                } else {
                    //@"You are not the device owner."
                }
            });
        }];
    }
    else {
        //@"Your device cannot authenticate using TouchID."
    }
}

@end
