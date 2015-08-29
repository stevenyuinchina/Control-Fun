//
//  ViewController.m
//  Control Fun
//
//  Created by APPLE on 15-8-29.
//  Copyright (c) 2015年 St.Works. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// 这两个代码是在拖入textField之后，打开Assistant Editor，并把textField分别拖到这个地方自动生成的
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextField *passField;

@end

@implementation ViewController

// 以下两块都是自动生成的代码
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 添加“点击return之后返回输入界面"的功能
- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}

// 添加"点击键盘区域以外的界面返回输入界面的功能"
- (IBAction)backgroundTap:(id)sender {
    [self.nameField resignFirstResponder];
    [self.passField resignFirstResponder];
}

@end
