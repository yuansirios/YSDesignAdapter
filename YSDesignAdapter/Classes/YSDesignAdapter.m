//
//  YSDesignAdapter.m
//  YSDesignAdapter_Example
//
//  Created by yuan on 2018/11/5.
//  Copyright © 2018年 yuansirios. All rights reserved.
//

#import "YSDesignAdapter.h"

@implementation YSDesignAdapter{
    float _designScale;
    float _fontScale;
}

static YSDesignAdapter *_instance;

+ (instancetype)shareManager{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if (_instance == nil) {
            _instance = [[self alloc]init];
            [_instance setDefaultScale];
        }
    });
    return _instance;
}

- (void)setDefaultScale{
    _designScale = 1;
    _fontScale = 1;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        const CGFloat screenWidth = ({
            CGSize size = UIScreen.mainScreen.bounds.size;
            MIN(size.width, size.height);
        });
        if (screenWidth < 370) {
            _designScale = 0.85;
            _fontScale = 0.95;
        }
        if (screenWidth > 380) {
            _designScale = 1.1;
            _fontScale = 1.05;
        }
    }
}

- (CGFloat)roundValue:(CGFloat)value{
    const CGFloat deviceScale = UIScreen.mainScreen.scale;
    const NSInteger pixels = round(value * deviceScale);
    return pixels / deviceScale;
}

- (CGFloat)scaleDesignValue:(CGFloat)value{
    return [self roundValue:value * _designScale];
}

- (CGFloat)scaleFontValue:(CGFloat)value{
    return [self roundValue:value * _fontScale];
}

@end
