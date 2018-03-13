//
//  RCToast.m
//  Pods-RCDebugKit_Example
//
//  Created by yxj on 13/03/2018.
//

#import "RCToast.h"
#import "RCDebugMacros.h"

static const NSTimeInterval RCDEBUG_TOAST_DEFAULT_DURATION = 2;
static const CGFloat RCDEBUG_TOAST_DEFAULT_BOTTOM_MARGIN = 80;
static const CGFloat RCDEBUG_TOAST_LABEL_HORIZONTAL_PADDING = 20;
static const CGFloat RCDEBUG_TOAST_LABEL_VERTICAL_PADDING = 7;

@implementation RCToast

+ (void)showToastMessage:(NSString *)message {
    [self showToastMessage:message withDuration:RCDEBUG_TOAST_DEFAULT_DURATION bottomMargin:RCDEBUG_TOAST_DEFAULT_BOTTOM_MARGIN];
}

+ (void)showToastMessage:(NSString *)message withDuration:(NSTimeInterval)duration {
    [self showToastMessage:message withDuration:duration bottomMargin:RCDEBUG_TOAST_DEFAULT_BOTTOM_MARGIN];
}

+ (void)showToastMessage:(NSString *)message withBottomMargin:(CGFloat)bottomMargin {
    [self showToastMessage:message withDuration:RCDEBUG_TOAST_DEFAULT_DURATION bottomMargin:bottomMargin];
}

//window --> greyview --> label
+ (void)showToastMessage:(NSString *)message withDuration:(NSTimeInterval)duration bottomMargin:(CGFloat)bottomMargin {
    dispatch_main_async_safe(^{
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        UIView *greyView = [[UIView alloc] init];
        greyView.backgroundColor = [UIColor colorWithRed:82.0/255.0 green:82.0/255.0 blue:82.0/255.0 alpha:255.0/255.0];
        greyView.frame = CGRectZero;
        greyView.alpha = 0.8f;
        greyView.layer.cornerRadius = 17.0f;
        greyView.layer.masksToBounds = YES;
        [window addSubview:greyView];
        
        UILabel *label = [[UILabel alloc] init];
        label.text = message;
        label.textColor = [UIColor whiteColor];
        label.textAlignment = NSTextAlignmentCenter;
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont boldSystemFontOfSize:15.0f];
        [label sizeToFit];
        [greyView addSubview:label];
        greyView.frame = CGRectMake((kScreenWidth - label.bounds.size.width) / 2.f - RCDEBUG_TOAST_LABEL_HORIZONTAL_PADDING,
                                    kScreenHeight - label.bounds.size.height - 2*RCDEBUG_TOAST_LABEL_VERTICAL_PADDING - bottomMargin,
                                    label.bounds.size.width + 2*RCDEBUG_TOAST_LABEL_HORIZONTAL_PADDING,
                                    label.bounds.size.height + 2*RCDEBUG_TOAST_LABEL_VERTICAL_PADDING);
        label.frame = CGRectMake(RCDEBUG_TOAST_LABEL_HORIZONTAL_PADDING, RCDEBUG_TOAST_LABEL_VERTICAL_PADDING, label.bounds.size.width, label.bounds.size.height);//label.centerX.centerY.equalTo(greyView)
        
        [UIView animateWithDuration:duration animations:^{
            greyView.alpha = 0;
        } completion:^(BOOL finished) {
            [greyView removeFromSuperview];
        }];
    });
}

@end
