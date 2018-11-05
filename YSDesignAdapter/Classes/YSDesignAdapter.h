//
//  YSDesignAdapter.h
//  YSDesignAdapter_Example
//
//  Created by yuan on 2018/11/5.
//  Copyright © 2018年 yuansirios. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define YSDesignValue(_VALUE_) [[YSDesignAdapter shareManager]scaleDesignValue:_VALUE_]
#define YSFontValue(_VALUE_) [[YSDesignAdapter shareManager]scaleFontValue:_VALUE_]

@interface YSDesignAdapter : NSObject

+ (instancetype)shareManager;

- (CGFloat)scaleDesignValue:(CGFloat)value;

- (CGFloat)scaleFontValue:(CGFloat)value;

@end

NS_ASSUME_NONNULL_END
