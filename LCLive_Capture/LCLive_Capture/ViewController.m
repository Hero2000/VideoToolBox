//
//  ViewController.m
//  LCLive_Capture
//
//  Created by 刘川 on 2019/3/25.
//  Copyright © 2019 liuchuanfeng. All rights reserved.
//

#import "ViewController.h"
#import "CaptureViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *liveBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //  编解码过程
    //  Camera  负责视频采集
    //  H264EnCode 负责视频编码
    //  H264DeCode 负责视频解码
}

// 进入视频采集
- (IBAction)liveAction:(id)sender {
    
    CaptureViewController *captureVc =  [CaptureViewController new];
    UINavigationController *naVC = [[UINavigationController alloc]initWithRootViewController:captureVc];
    [self.navigationController presentViewController: naVC animated:YES completion:nil];
}

@end
