//
//  NSObject+Runtime.m
//  GomuNSCoding_Runtime
//
//  Created by 庞彬 on 2018/8/31.
//  Copyright © 2018年 Gomu. All rights reserved.
//

#import "NSObject+Runtime.h"

@implementation NSObject (Runtime)

- (void)encoder:(NSCoder *)aCoder
{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    for (int i = 0; i < count; i ++) {
        Ivar ivar = ivars[i];
        NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar)];
        id value = [self valueForKey:key];
        [aCoder encodeObject:value forKey:key];
    }
    //在OC中使用了Copy、Creat、New类型的函数，需要释放指针！（注：ARC管不了C函数）
    free(ivars);
}

- (void)decoder:(NSCoder *)aDecoder
{
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    for (int i = 0; i < count; i ++) {
        Ivar ivar = ivars[i];
        NSString *key = [NSString stringWithUTF8String:ivar_getName(ivar)];
        id value = [aDecoder decodeObjectForKey:key];
        [self setValue:value forKey:key];
    }
    free(ivars);
}

@end




