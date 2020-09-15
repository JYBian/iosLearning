//
//  ViewController.m
//  01加法计算器
//
//  Created by 边俊宇 on 9/2/20.
//  Copyright © 2020 Marko. All rights reserved.
//

#import "ViewController.h"

// 类扩展
@interface ViewController ()

-(IBAction) compute;

// 表示第一个文本框
@property (weak, nonatomic) IBOutlet UITextField *txtNum1;

// 表示第二个文本框
@property (weak, nonatomic) IBOutlet UITextField *txtNum2;

// 显示结果的label
@property (weak, nonatomic) IBOutlet UILabel *lblResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 点击计算按钮
-(IBAction) compute {
    // 实现计算功能
    // 1. 获取用户的输入
    NSString *num1 = self.txtNum1.text;
    NSString *num2 = self.txtNum2.text;
    
    int n1 = [num1 intValue];
    int n2 = num2.intValue;
    
    // 2. 计算和
    
    int result = n1 + n2;
    
    // 3. 把结果显示到结果label上
    self.lblResult.text = [NSString stringWithFormat:@"%d", result];
    
    // 4. 叫回键盘
    // 谁叫出键盘那么谁就是第一响应者，让第一响应者辞职，就可以把键盘叫回去
//    [self.txtNum2 resignFirstResponder];
//    [self.txtNum1 resignFirstResponder];
    
    // 5. 把键盘叫回去的第二种做法
    // self.view表示当前控制器所管理的那个view（每个控制器都会管理一个view）
    // 这时把键盘叫回去的思路就是：让控制器所管理的view停止编辑，这样的话，凡是这个view中的子控件叫出的键盘就都回去了
    [self.view endEditing:YES];
}
@end
