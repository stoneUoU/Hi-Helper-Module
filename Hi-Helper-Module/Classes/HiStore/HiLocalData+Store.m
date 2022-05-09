//
//  HiLocalData+Store.m
//  Hi-Helper-Module
//
//  Created by stone on 2022/5/9.
//  Copyright © 2019 Stone. All rights reserved.
//

#import "HiLocalData+Store.h"

@implementation HiLocalData (Store)


//Store
+ (void)saveStore:(NSString *)storeStr {
    [self setObject:storeStr forKey:@"storeStr"];
};

+ (NSString *)getStore {
    return  [self objectForKey:@"storeStr"];
};

/**
 *  App的环境(生产、测试)
 *
 *  @param appEnvi
 */
+ (void)saveAppEnvi:(BOOL)appEnvi {
    
    [self setObject:@(appEnvi) forKey:@"appEnvi"];
};

+ (BOOL)appEnvi {
    
    BOOL appEnvi = [self boolForKey:@"appEnvi"];
    return appEnvi;
};

@end
