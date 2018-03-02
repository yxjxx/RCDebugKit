//
//  RCFPSLabelHeader.h
//  RCDebugKit
//
//  Created by yxj on 02/03/2018.
//
//
//  usage: in `application:didFinishLaunchingWithOptions:` add RC_ADD_FPS_LABEL

#ifndef RCFPSLabelHeader_h
#define RCFPSLabelHeader_h

#ifndef RC_ADD_FPS_LABEL
#define RC_ADD_FPS_LABEL  \
dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{  \
    Class c = NSClassFromString(@"YYFPSLabel");  \
    if (c) {  \
        UILabel *label = [[c alloc]initWithFrame:CGRectMake(100, 2, 50, 15)];  \
        label.transform = CGAffineTransformScale(label.transform, 0.8, 0.8);  \
        label.backgroundColor = [UIColor grayColor];  \
        [self.window addSubview:label];  \
    }  \
});
#endif


#endif /* RCFPSLabelHeader_h */
