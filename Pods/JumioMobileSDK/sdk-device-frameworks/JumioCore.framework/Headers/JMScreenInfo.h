//
//  JMScreenInfo.h
//
//  Copyright © 2016 Jumio Corporation All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JMScreenInfo : NSObject

+ (BOOL)isScreenAtLeast4Dot7Inch;
+ (BOOL)isScreenAtLeast5Dot5Inch;
+ (BOOL)isScreen3Dot5Inch;
+ (BOOL)isScreenAtLeast4Inch;

@end
