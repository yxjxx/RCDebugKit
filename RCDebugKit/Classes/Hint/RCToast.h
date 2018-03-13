//
//  RCToast.h
//  Pods-RCDebugKit_Example
//
//  Created by yxj on 13/03/2018.
//

#import <Foundation/Foundation.h>

@interface RCToast : NSObject
/**
Android style toast hint, with default duration 2.0 second

@param message : hint text
*/
+ (void)showToastMessage:(NSString *)message;
+ (void)showToastMessage:(NSString *)message withDuration:(NSTimeInterval)duration;
+ (void)showToastMessage:(NSString *)message withBottomMargin:(CGFloat)bottomMargin;
+ (void)showToastMessage:(NSString *)message withDuration:(NSTimeInterval)duration bottomMargin:(CGFloat)bottomMargin;
@end
