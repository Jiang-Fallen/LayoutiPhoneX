//
//  ViewController.m
//  LayoutiPhoneX
//
//  Created by M Jiang on 2017/11/6.
//  Copyright © 2017年 JiangFallen. All rights reserved.
//

#import "ViewController.h"
#import "CodeLayoutViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (IBAction)pushToCodeLayout:(UIButton *)sender {
    CodeLayoutViewController *controller = [[CodeLayoutViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
