//
//  ViewController.m
//  UIViewControllerCategoryWithRuntime
//
//  Created by 王迎博 on 16/5/24.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "ViewController.h"
#import "secondVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)pushTarget:(id)sender
{
    secondVC *vc = [[secondVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}



@end
