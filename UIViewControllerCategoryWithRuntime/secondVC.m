//
//  secondVC.m
//  UIViewControllerCategoryWithRuntime
//
//  Created by 王迎博 on 16/5/24.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "secondVC.h"
#import "UIViewController+Extension.h"

#define   SHOW_ALTER(str)  [[[UIAlertView alloc]initWithTitle:@"可儿购提示" message:str delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil] show]

//快速的定义一个weakSelf 用于block里面
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@interface secondVC ()

@end

@implementation secondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //添加左按钮
    [self addLeftButton];
    
    //添加右按钮
    [self addRightButton];
}


/**
 *  添加左按钮
 */
- (void)addLeftButton
{
    [self initBackButtonWithButtonW:40 buttonH:30 title:@"返回" titleColor:[UIColor orangeColor] buttonImage:nil negativeSpacer:1 touchBlock:^(UIButton *BackButton) {
    }];
    WS(weakSelf)
    weakSelf.leftBtnBlock = ^(NSString *string){
        [weakSelf.navigationController popViewControllerAnimated:YES];
    };
}


/**
 *  添加右按钮
 */
- (void)addRightButton
{
    [self initRightButtonWithButtonW:40 buttonH:30 title:@"保存" titleColor:[UIColor greenColor] touchBlock:^(UIButton *rightButton) {
    }];
    WS(weakSelf)
    weakSelf.rightBtnBlock = ^(NSString *rightString){
        SHOW_ALTER(@"点击了右键");
    };
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}



@end
