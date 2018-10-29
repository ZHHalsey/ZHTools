//
//  ZHTools.h
//  RenheJinfu
//
//  Created by ZH on 2018/9/7.
//  Copyright © 2018年 张豪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZHTools : NSObject

#pragma mark - 快速创建一个btn
+ (UIButton*)createButtonWithFrame:(CGRect)frame image:(UIImage*)image title:(NSString*)title titleColor:(UIColor*)color BackgourndColor:(UIColor*)backColor target:(id)target action:(SEL)action;

#pragma mark - 快速创建一个label
/// posi : 左对齐 > 0; 居中 > 1; 右对齐 > 2
+ (UILabel*)createLabelWithFrame:(CGRect)frame Font:(UIFont*)font TextColor:(UIColor*)color TextPosin:(NSTextAlignment)posi BackgourndColor:(UIColor*)backColor text:(NSString*)text;

#pragma mark - 判断手机号是否有效
/// mobileNum : 手机号
+ (BOOL)isValidMobileNumber:(NSString *)mobileNum;

#pragma mark - 字符串密文显示
/// SecureStr : 想改变的字符串 leftNum : 左侧展示个数 RightNum:右侧展示个数
+ (NSString *)getSecureStr:(NSString *)SecureStr WithLeftNum:(NSInteger)leftNum AndRightNum:(NSInteger)rightNum;

#pragma mark - 给imageView设置圆角
/// imageView:传入想要修改的imageView控件 width:传入imageView的大小(比如50x50, 就传入50)
+ (UIImageView *)setCircleImageView:(UIImageView *)imageView andImageSize:(CGFloat)width;


@end
