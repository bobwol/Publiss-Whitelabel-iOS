//
//  PUBAppDelegate.m
//  Publiss
//
//  Copyright (c) 2014 Publiss GmbH. All rights reserved.
//

#import "PUBAppDelegate.h"
#import "Publiss.h"
#import "UIColor+PUBDesign.h"
#import "PUBConstants.h"
#import <PublissCore.h>

@implementation PUBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window.tintColor = [UIColor whiteColor];
    
    PUBConfig.sharedConfig.appToken = @"1d3ae766-0206-4eb7-90e1-f2e2917a4635";
    PUBConfig.sharedConfig.appSecret = @"9fc4153103bd73cbe36c88738dc9e8bb";
    
    [Publiss.staticInstance setupWithLicenseKey:nil];

    return YES;
}

@end
