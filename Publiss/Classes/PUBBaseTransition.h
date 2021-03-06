//
//  PUBBaseTransition.h
//  Publiss
//
//  Copyright (c) 2014 Publiss GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>

extern const CGFloat DURATION_PRESENT;
extern const CGFloat DURATION_DISMISS;
extern const CGFloat DIMM_VIEW_ALPHA;

typedef NS_ENUM(NSInteger, TransitionMode) { TransitionModePresent = 0, TransitionModeDismiss };

@interface PUBBaseTransition : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, assign) TransitionMode transitionMode;
@property (nonatomic, copy) void (^animationEndedBlock)(BOOL success, TransitionMode mode);

- (void)hideNavigationBarOfController:(UIViewController *)controller withDuration:(CGFloat)duration;

@end
