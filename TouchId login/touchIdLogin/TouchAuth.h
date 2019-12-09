//
//  TouchAuth.h
//  TouchId login
//
//  Created by Sujit on 1/21/16.
//  Copyright © 2016 Sujit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <LocalAuthentication/LocalAuthentication.h>

@interface TouchAuth : NSObject

- (void)authenticateWithTouch;

@end
