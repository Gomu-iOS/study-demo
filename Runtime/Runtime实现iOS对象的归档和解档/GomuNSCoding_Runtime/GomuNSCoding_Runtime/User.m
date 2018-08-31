//
//  User.m
//  GomuNSCoding_Runtime
//
//  Created by 庞彬 on 2018/8/31.
//  Copyright © 2018年 Gomu. All rights reserved.
//

#import "User.h"

@implementation User

#pragma mark - 实现NSCoding的协议方法

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    //需要归档的属性
    /**第一种常规方法*/
//    [aCoder encodeObject:self.name forKey:@"name"];
//    [aCoder encodeObject:self.age forKey:@"age"];
//    [aCoder encodeObject:self.testArr forKey:@"testArr"];
    /**第二章Runtime方法*/
    [self encoder:aCoder];
    NSLog(@"调用了 encodeWithCoder：");
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        //解档
        /**第一种常规方法*/
//        self.name = [aDecoder decodeObjectForKey:@"name"];
//        self.age = [aDecoder decodeObjectForKey:@"age"];
//        self.testArr = [aDecoder decodeObjectForKey:@"testArr"];
        /**第二种Runtime方法*/
        [self decoder:aDecoder];
        NSLog(@"调用了 initWithCoder：");
    }
    return self;
}

@end
