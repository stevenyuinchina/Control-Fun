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
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UIButton *doSomethingButton;

@end

@implementation ViewController

// 以下两块都是自动生成的代码
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sliderLabel.text=@"50";
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
- (IBAction)sliderChanged:(UISlider *)sender {
    int progress = lroundf(sender.value);
    self.sliderLabel.text=[NSString stringWithFormat:@"%d",progress];
}
- (IBAction)switchChanged:(UISwitch *)sender {
    BOOL setting = sender.isOn;
    [self.leftSwitch setOn:setting animated:YES];
    [self.rightSwitch setOn: setting animated:YES];
}
- (IBAction)toggleControls:(UISegmentedControl *)sender {
    // 0 == switches index
    if (sender.selectedSegmentIndex == 0){
        self.leftSwitch.hidden=NO;
        self.rightSwitch.hidden=NO;
        self.doSomethingButton.hidden = YES;
    }
    else {
        self.leftSwitch.hidden = YES;
        self.rightSwitch.hidden = YES;
        self.doSomethingButton.hidden = NO;
    }
}

- (IBAction)buttonPressed:(id)sender {
}

@end
