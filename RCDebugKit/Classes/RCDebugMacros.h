//
//  RCDebugMacros.h
//  Pods
//
//  Created by yxj on 13/03/2018.
//

#ifndef RCDebugMacros_h
#define RCDebugMacros_h

#ifndef kScreenWidth
#define kScreenWidth            [[UIScreen mainScreen]bounds].size.width
#endif
#ifndef kScreenHeight
#define kScreenHeight           [[UIScreen mainScreen]bounds].size.height
#endif

#ifndef dispatch_queue_async_safe
#define dispatch_queue_async_safe(queue, block)\
if (strcmp(dispatch_queue_get_label(DISPATCH_CURRENT_QUEUE_LABEL), dispatch_queue_get_label(queue)) == 0) {\
block();\
} else {\
dispatch_async(queue, block);\
}
#endif

#ifndef dispatch_main_async_safe
#define dispatch_main_async_safe(block) dispatch_queue_async_safe(dispatch_get_main_queue(), block)
#endif

#endif /* RCDebugMacros_h */
