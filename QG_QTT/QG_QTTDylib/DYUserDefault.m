//
//  DYUserDefault.m
//  QG_QuTouTiaoDylib
//
//  Created by 李超群 on 2018/12/13.
//  Copyright © 2018 xinxianzhizao. All rights reserved.
//

#import "DYUserDefault.h"

/** 自动进入和返回操作 */
NSString * const autoKey = @"autoKey";

@implementation DYUserDefault

+(void)setBool:(BOOL)value forKey:(NSString *)key{
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];

}

+(BOOL)boolForKey:(NSString *)key{
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

@end
