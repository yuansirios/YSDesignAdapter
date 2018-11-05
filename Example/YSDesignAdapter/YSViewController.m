//
//  YSViewController.m
//  YSDesignAdapter
//
//  Created by yuansirios on 11/05/2018.
//  Copyright (c) 2018 yuansirios. All rights reserved.
//

#import "YSViewController.h"
#import <YSDesignAdapter/YSDesignAdapter.h>

@interface YSViewController ()

@end

@implementation YSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:({
        UIButton *btn = UIButton.new;
        btn.backgroundColor = UIColor.lightGrayColor;
        [btn setTitle:@"我是一个按钮" forState:UIControlStateNormal];
        btn.frame = CGRectMake(20, 80, YSDesignValue(200), YSDesignValue(50));
        [btn.titleLabel setFont:[UIFont systemFontOfSize:YSFontValue(14)]];
        [btn addTarget:self action:@selector(showBtnInfo:) forControlEvents:UIControlEventTouchUpInside];
        btn;
    })];
}

- (void)showBtnInfo:(UIButton *)btn{
    NSString *msg = btn.description;
    msg = [msg stringByAppendingString:btn.titleLabel.font.description];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:msg delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

@end
