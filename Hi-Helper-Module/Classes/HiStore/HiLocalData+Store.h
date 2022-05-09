//
//  HiLocalData+Store.h
//  Hi-Helper-Module
//
//  Created by stone on 2022/5/9.
//  Copyright © 2019 Stone. All rights reserved.
//

#import "HiLocalData.h"
NS_ASSUME_NONNULL_BEGIN

@interface HiLocalData (Store)

//Store
+ (void)saveStore:(NSString *)storeStr;
+ (NSString *)getStore;

/**
 *  App的环境(生产、测试)
 *
 *  @param appEnvi
 */
+ (void)saveAppEnvi:(BOOL)appEnvi;
+ (BOOL)appEnvi;

@end

NS_ASSUME_NONNULL_END
