//
//  NSObject+Runtime.h
//  GomuNSCoding_Runtime
//
//  Created by 庞彬 on 2018/8/31.
//  Copyright © 2018年 Gomu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface NSObject (Runtime)

- (void)encoder:(NSCoder *)aCoder;

- (void)decoder:(NSCoder *)aDecoder;

@end
