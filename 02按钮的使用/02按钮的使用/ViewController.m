//
//  ViewController.m
//  02按钮的使用
//
//  Created by 边俊宇 on 9/3/20.
//  Copyright © 2020 Marko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)up;
- (IBAction)down;
- (IBAction)right;
- (IBAction)left;
@property (weak, nonatomic) IBOutlet UIButton *btnIcon;

- (IBAction)big;
- (IBAction)small;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)up {
    // 获取按钮的y坐标的值，t让y的值递减，然后再把新的值赋值给按钮的y
    // 获取y头像按钮的坐标
    //获取按钮原始的frame值（这个frame中就包含了按钮的大小和坐标）
    CGRect originFrame = self.btnIcon.frame;
    originFrame.origin.y -= 10;
    
    // 把新的frame赋值给按钮
    self.btnIcon.frame = originFrame;
    
    NSLog(@"上");
}

- (IBAction)down {
    // 1. 获取原始的frame值
    CGRect originFrame = self.btnIcon.frame;
    
    // 2. 修改frame
    originFrame.origin.y += 10;
    
    // 3. 重新把frame赋值给按钮
    self.btnIcon.frame = originFrame;
    
    NSLog(@"下");
}

- (IBAction)left {
    CGRect originFrame = self.btnIcon.frame;
    originFrame.origin.x -= 10;
    self.btnIcon.frame = originFrame;
    
    NSLog(@"左");
}

- (IBAction)right {
    CGRect originFrame = self.btnIcon.frame;
    originFrame.origin.x += 10;
    self.btnIcon.frame = originFrame;
    
    NSLog(@"右");
}

// 放大
- (IBAction)big {
    // 获取原始的frame
    CGRect originFrame = self.btnIcon.frame;
    
    // 修改frame
//    originFrame.size.width += 10;
//    originFrame.size.height += 10;
    
    originFrame.size = CGSizeMake(originFrame.size.width + 10, originFrame.size.height + 10);
    
    // 重新赋值
    self.btnIcon.frame = originFrame;
    
}

// 缩小
- (IBAction)small {
    // 获取原始的frame
        CGRect originFrame = self.btnIcon.frame;
        
        // 修改frame
        originFrame.size.width -= 10;
        originFrame.size.height -= 10;
        
//        originFrame.size = CGSizeMake(originFrame.size.width + 10, originFrame.size.height + 10);
        
        // 重新赋值
        self.btnIcon.frame = originFrame;
}
@end
