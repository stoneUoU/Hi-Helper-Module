//
//  HiLocalData.h
//  Hi-Helper-Module
//
//  Created by stone on 2022/5/9.
//  Copyright © 2019 Stone. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HiLocalData : NSObject

/**
 *  保存到NSUserDefaults
 *
 *  @param object 保存内容
 *  @param key    保存Key
 */
+ (void)setObject:(NSObject *)object forKey:(NSString *)key;
/**
 *  获取保存的NSUserDefaults
 *
 *  @param key 保存的key
 *
 *  @return 保存的内容
 */
+ (id)objectForKey:(NSString *)key;

+ (BOOL)boolForKey:(NSString *)key;
+ (NSInteger)integerForKey:(NSString *)key;
+ (float)floatForKey:(NSString *)key;
+ (double)doubleForKey:(NSString *)key;

+ (void)setArchivedData:(id)data forKey:(NSString *)key;
+ (id)unarchiveObjectForKey:(NSString *)key;

@end

@interface NSString (Extension)

/**
 字符串是否为空
 @return YES/NO
 */
- (BOOL)hiNotEmptyOrNil;

@end

NS_ASSUME_NONNULL_END
