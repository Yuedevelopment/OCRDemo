//
//  TestObjectcClass.m
//  TesseractOCRDemo
//
//  Created by Tangguo on 15/10/27.
//  Copyright © 2015年 Tangguo. All rights reserved.
//

#import "TestObjectcClass.h"

extern NSString *CTSettingCopyMyPhoneNumber();

@implementation TestObjectcClass

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSLog(@"手机好吗:%@",CTSettingCopyMyPhoneNumber());
        
    }
    return self;
}


@end
