////
////  UIImage+NilImage.m
////  Hi-Helper-Module
////
////  Created by stone on 2024/4/3.
////
//
//#import "UIImage+NilImage.h"
//#import <objc/runtime.h>
//#import <Foundation/Foundation.h>
//@implementation UIImage (NilImage)
//
//+(void)load{
//    Method imageNamed = class_getClassMethod(self,@selector(imageNamed:));
//    Method looha_ImageNamed =class_getClassMethod(self,@selector(looha_none_imageNamed:));
//    method_exchangeImplementations(imageNamed, looha_ImageNamed);
//}
//
//+(instancetype)looha_none_imageNamed:(NSString*)name{
//    
//    if ([self nullToString:name]) {
////        NSLog(@"打印无图片名称=============%@",name);
//        return  nil;
//    }
//    
//    UIImage *image = [self looha_none_imageNamed:name];
//    if (image == nil) {
////        NSLog(@"打印无图片名称=============%@",name);
//        return  nil;
//    }
//    return [self looha_none_imageNamed:name];;
//}
//
////判断字符串是否为空
//+ (BOOL)nullToString:(id)string {
//    if ([string isEqual:@"NULL"] || [string isKindOfClass:[NSNull class]] || [string isEqual:[NSNull null]] || [string isEqual:NULL] || [[string class] isSubclassOfClass:[NSNull class]] || string == nil || string == NULL || [string isKindOfClass:[NSNull class]] || [[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length]==0 || [string isEqualToString:@"<null>"] || [string isEqualToString:@"(null)"]) {
//        return YES;
//    } else {
//        return NO;
//    }
//}
//@end
//
