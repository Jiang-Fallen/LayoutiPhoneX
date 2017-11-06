//
//  CodeLayoutViewController.m
//  LayoutiPhoneX
//
//  Created by M Jiang on 2017/11/6.
//  Copyright © 2017年 JiangFallen. All rights reserved.
//

#import "CodeLayoutViewController.h"
#import "Masonry.h"
#import "JFHeader.h"

@interface CodeLayoutViewController ()

@property (nonatomic, weak) UILabel *leftLabel;
@property (nonatomic, weak) UILabel *rightLabel;
@property (nonatomic, weak) UIView *bottomView;

@end

@implementation CodeLayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"代码布局";
    [self createView];
//    [self initSubViews];
//    [self initLayout];
    
}

- (void)initSubViews{
    UILabel *leftLabel = [[UILabel alloc] init];
    leftLabel.text = @"基础约束";
    leftLabel.numberOfLines = 0;
    leftLabel.textAlignment = NSTextAlignmentCenter;
    leftLabel.backgroundColor = [UIColor orangeColor];
    
    UILabel *rightLabel = [[UILabel alloc] init];
    rightLabel.text = @"Constrain to margins";
    rightLabel.numberOfLines = 0;
    rightLabel.textAlignment = NSTextAlignmentCenter;
    rightLabel.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:leftLabel];
    [self.view addSubview:rightLabel];
    
    self.leftLabel = leftLabel;
    self.rightLabel = rightLabel;
}

- (void)initLayout{
    [self.leftLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(100);
        make.width.equalTo(self.view).multipliedBy(0.5);
        make.left.equalTo(self.view);
        make.bottom.equalTo(self.view.mas_bottom);
    }];
    
    [self.rightLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(100);
        make.left.equalTo(self.leftLabel.mas_right);
        make.right.equalTo(self.view);
//        if (@available(iOS 11.0, *)) {
//            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
//        } else {
//            make.bottom.equalTo(self.view.mas_bottom);
//        }
    }];
    NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self.leftLabel attribute:NSLayoutAttributeBottomMargin relatedBy:NSLayoutRelationEqual toItem:self.rightLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    [self.view addConstraint:constraint];
}

- (void)createView{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    self.bottomView = view;
}

- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
    CGRect frame = self.bottomView.frame;
    frame.origin.y = self.view.bounds.size.height - frame.size.height - JF_BOTTOM_SPACE;
    self.bottomView.frame = frame;
}

@end
