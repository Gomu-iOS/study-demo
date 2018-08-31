//
//  User.h
//  GomuNSCoding_Runtime
//
//  Created by 庞彬 on 2018/8/31.
//  Copyright © 2018年 Gomu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Runtime.h"

@interface User : NSObject <NSCoding>
//需要归档的属性
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;
@property (nonatomic, copy) NSArray *testArr;

@end
