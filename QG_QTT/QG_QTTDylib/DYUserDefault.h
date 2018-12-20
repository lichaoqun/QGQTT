//
//  DYUserDefault.h
//  QG_QuTouTiaoDylib
//
//  Created by 李超群 on 2018/12/13.
//  Copyright © 2018 xinxianzhizao. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 自动进入和返回操作 */
UIKIT_EXTERN NSString * const autoKey;

@interface DYUserDefault : NSObject

+(void)setBool:(BOOL)value forKey:(NSString *)key;

+(BOOL)boolForKey:(NSString *)key;

@end

