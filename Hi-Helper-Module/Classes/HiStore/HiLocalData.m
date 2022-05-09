//
//  HiLocalData.m
//  Hi-Helper-Module
//
//  Created by stone on 2022/5/9.
//  Copyright © 2019 Stone. All rights reserved.
//

#import "HiLocalData.h"

@implementation HiLocalData

#pragma mark - 保存到NSUserDefaults

+ (NSUserDefaults *)shareUserDefaults {
    return [NSUserDefaults standardUserDefaults];
}

/**
 *  保存到NSUserDefaults
 *
 *  @param object 保存内容
 *  @param key    保存Key
 */
+ (void)setObject:(NSObject *)object forKey:(NSString *)key {
    [[self shareUserDefaults] removeObjectForKey:key];
    if (object) {
        [[self shareUserDefaults] setObject:object forKey:key];
    }
    [[self shareUserDefaults] synchronize];
}

/**
 *  获取保存的NSUserDefaults
 *
 *  @param key 保存的key
 *
 *  @return 保存的内容
 */
+ (id)objectForKey:(NSString *)key {
    return [[self shareUserDefaults] objectForKey:key];
}

/**
 *    保存数据
 */
+ (void)setArchiveData:(id)data forKey:(NSString *)key {
    NSData *encodeData = [NSKeyedArchiver archivedDataWithRootObject:data];
    [self setObject:encodeData forKey:key];
}

/**
 *  获取数据
 *
 */
+ (id)archiveDataForKey:(NSString *)key {
    NSData *encodeData = [self objectForKey:key];
    if (encodeData) {
        return [NSKeyedUnarchiver unarchiveObjectWithData:encodeData];
    } else {
        return nil;
    }
}

+ (BOOL)boolForKey:(NSString *)key {
    if (![key hiNotEmptyOrNil]) {
        return NO;
    }
    id obj = [[self shareUserDefaults] objectForKey:key];
    if ([obj respondsToSelector:@selector(boolValue)]) {
        return [obj boolValue];
    }
    return NO;
}

+ (NSInteger)integerForKey:(NSString *)key {
    if (![key hiNotEmptyOrNil]) {
        return 0;
    }
    id obj = [[self shareUserDefaults] objectForKey:key];
    if ([obj respondsToSelector:@selector(integerValue)]) {
        return [obj integerValue];
    }
    return 0;
}

+ (float)floatForKey:(NSString *)key {
    if (![key hiNotEmptyOrNil]) {
        return .0f;
    }
    id obj = [[self shareUserDefaults] objectForKey:key];
    if ([obj respondsToSelector:@selector(floatValue)]) {
        return [obj floatValue];
    }
    return .0f;
}

+ (double)doubleForKey:(NSString *)key {
    if (![key hiNotEmptyOrNil]) {
        return .0f;
    }
    id obj = [[self shareUserDefaults] objectForKey:key];
    if ([obj respondsToSelector:@selector(doubleValue)]) {
        return [obj doubleValue];
    }
    return .0f;
}

+ (void)setArchivedData:(id)data forKey:(NSString *)key {
    NSData *encodeData = [NSKeyedArchiver archivedDataWithRootObject:data];
    [self setObject:encodeData forKey:key];
}

+ (id)unarchiveObjectForKey:(NSString *)key {
    NSData *encodeData = [self objectForKey:key];
    if (encodeData) {
        return [NSKeyedUnarchiver unarchiveObjectWithData:encodeData];
    } else {
        return nil;
    }
}

@end

@implementation NSString (Extension)

/**
 *  字符串 不 为空字符或者为nil
 *
 *  @return bool
 */
- (BOOL)hiNotEmptyOrNil {
    if (self == nil) {
        return NO;
    }
    return self.length > 0 ? YES : NO;
}

@end
