//
//  ViewController.m
//  GomuNSCoding_Runtime
//
//  Created by 庞彬 on 2018/8/31.
//  Copyright © 2018年 Gomu. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@property(nonatomic,copy)NSString * filePath;//存储路径

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    User *user = [[User alloc] init];
    user.name = @"小明";
    user.age = @"15";
    user.testArr = @[@"测试1",@"测试2",@"测试3"];
    //归档
    [NSKeyedArchiver archiveRootObject:user toFile:self.filePath];
    //解档
    User *newUser = [NSKeyedUnarchiver unarchiveObjectWithFile:self.filePath];
    NSLog(@"解档：%@,%@,%@",newUser.name,newUser.age,newUser.testArr);
}

- (NSString *)filePath {
    return [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"file.archiver"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
