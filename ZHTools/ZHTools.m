//
//  ZHTools.m
//  RenheJinfu
//
//  Created by ZH on 2018/9/7.
//  Copyright © 2018年 张豪. All rights reserved.
//

#import "ZHTools.h"

@implementation ZHTools

#pragma mark - 快速创建一个btn
+ (UIButton*)createButtonWithFrame:(CGRect)frame image:(UIImage*)image title:(NSString*)title titleColor:(UIColor*)color BackgourndColor:(UIColor*)backColor target:(id)target action:(SEL)action{
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = backColor;
    [btn setFrame:frame];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:color forState:UIControlStateNormal];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return btn;
}
#pragma mark - 快速创建一个label
/// posi : 左对齐 > 0; 居中 > 1; 右对齐 > 2
+ (UILabel*)createLabelWithFrame:(CGRect)frame Font:(UIFont*)font TextColor:(UIColor*)color TextPosin:(NSTextAlignment)posi BackgourndColor:(UIColor*)backColor text:(NSString*)text
{
    UILabel* label = [[UILabel alloc] initWithFrame:frame];
    [label setFont:font];
    [label setTextColor:color];
    [label setTextAlignment:posi];
    [label setBackgroundColor:backColor];
    [label setText:text];
    return label;
}

#pragma mark - 判断手机号是否有效
/// mobileNum : 手机号
+ (BOOL)isValidMobileNumber:(NSString *)mobileNum{
    NSString * MOBILE = @"^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\\d{8}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    if ([regextestmobile evaluateWithObject:mobileNum] == YES){
        return YES;
    }else{
        return NO;
    }
}

#pragma mark - 字符串密文显示
/// SecureStr : 想改变的字符串 leftNum : 左侧展示个数 RightNum:右侧展示个数
+ (NSString *)getSecureStr:(NSString *)SecureStr WithLeftNum:(NSInteger)leftNum AndRightNum:(NSInteger)rightNum{
    if (leftNum > (SecureStr.length - rightNum)) {
        NSLog(@"你输入的角标有错误");
        return nil;
    }
    NSMutableString * SecureStr2 = [NSMutableString stringWithString:[NSString stringWithFormat:@"%@", SecureStr]];
    NSString *starStr = @"";
    for (int i = 0; i < (SecureStr.length - leftNum - rightNum); i++) {
        starStr = [starStr stringByAppendingString:@"*"];
    }
    [SecureStr2 replaceCharactersInRange:NSMakeRange(leftNum, SecureStr.length - leftNum - rightNum)  withString:starStr];
    return SecureStr2;
}

#pragma mark - 给view设置圆角
/// imageView:传入想要修改的imageView控件 width:传入imageView的大小(比如50x50, 就传入50)
+ (UIImageView *)setCircleImageView:(UIImageView *)imageView andImageSize:(CGFloat)width{
    imageView.layer.masksToBounds = YES;
    imageView.layer.cornerRadius = width / 2 ;
    imageView.layer.borderWidth = 0.0;
    imageView.layer.borderColor = [[UIColor redColor] CGColor];
    return imageView;
}

@end
