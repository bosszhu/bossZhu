//
//  ViewController.m
//  03UI图片的移动与放大缩小
//
//  Created by user on 16/6/2.
//  Copyright © 2016年 user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)move:(UIButton *)sender;
- (IBAction)change:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UIButton *icon;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)move:(UIButton *)sender {
    //通过frame移动位置
    {//为每个方法设置tag，就可以根据sender.tag来访问这个方法
    //获取原始值
    CGRect originFrame = self.icon.frame;
    //改变其中的变量使其位置改变
    switch (sender.tag) {
        case 10:
            originFrame.origin.y -= 10;
            break;
        case 20:
            originFrame.origin.y += 10;
            break;
        case 30:
            originFrame.origin.x -= 10;
            break;
        case 40:
            originFrame.origin.x += 10;
            break;
            
        default:
            break;
    }
    
    //把改变的位置赋给头像
        self.icon.frame = originFrame;}
    //通过center移动位置
    CGPoint centerPoint = self.icon.center;
    switch (sender.tag) {
        case 10:
            centerPoint.y -= 10;
            break;
        case 20:
            centerPoint.y += 10;
            break;
        case 30:
            centerPoint.x -= 10;
            break;
        case 40:
            centerPoint.x += 10;
            break;
            
        default:
            break;
    }
    //赋值回去
    self.icon.center = centerPoint;

}
//改变大小
- (IBAction)change:(UIButton *)sender {
    //拿到原始值
    CGRect originFrame = self.icon.frame;
    //改变原始值
    switch (sender.tag) {
        case 100:
            originFrame.size.height += 50;
            originFrame.size.width += 50;
            break;
        case 200:
            originFrame.size.height -= 50;
            originFrame.size.width -= 50;
            break;
            
        default:
            break;
    }
    //设置动画
    //1，开启一个动画
    [UIView beginAnimations:nil context:nil];
    //2，设置动画执行时间(放执行时候的代码)
    [UIView setAnimationDuration:1];
    //赋值回去
    self.icon.frame = originFrame;
        //3，提交动画
    [UIView commitAnimations];
    

    
    
}
@end
