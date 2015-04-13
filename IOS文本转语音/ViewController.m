//
//  ViewController.m
//  IOS文本转语音
//
//  Created by YH on 14-6-12.
//  Copyright (c) 2014年 Darcykr. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(50, 50, 100, 50)];
    btn.backgroundColor = [UIColor greenColor];
    [btn addTarget:self action:@selector(speech:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)speech:(UIButton *)sender{
    
    AVSpeechSynthesizer *av = [[AVSpeechSynthesizer alloc]init];
	AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc]initWithString:@"你好"];
    [av speakUtterance:utterance];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
