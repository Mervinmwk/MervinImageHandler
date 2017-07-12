//
//  ViewController.m
//  MervinImageHandler
//
//  Created by Mervin on 2017/7/10.
//  Copyright © 2017年 Mervin. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Category.h"
#import "MervinImageHandlerViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIImageView       *baseImageView;
@property (strong, nonatomic) UIImageView       *markImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [[UIColor lightGrayColor] colorWithAlphaComponent:0.2];
    UIImageView * baseImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Mervin.jpg"]];
    [self.view addSubview:baseImageView];
    _baseImageView = baseImageView;
    
    [baseImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.equalTo(@10);
        make.right.bottom.equalTo(@-10);
    }];
    
    UIButton * changeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [changeButton setTitle:@"LET'S DO IT" forState:UIControlStateNormal];
    changeButton.backgroundColor = [UIColor darkGrayColor];
    [changeButton addTarget:self action:@selector(changeButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:changeButton];
    
    [changeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(@-30);
        make.size.equalTo(CGSizeMake(100, 30));
    }];
    
}


#pragma mark -- button pressed
- (void)changeButtonPressed:(UIButton *)sender
{
    weakify(self);
    MervinImageHandlerViewController * handleImageVC = [[MervinImageHandlerViewController alloc] initWithSourceImage:[UIImage imageNamed:@"Mervin.jpg"] handleImageBlock:^(UIImage *newImage) {
        weakSelf.baseImageView.image = newImage;
    }];
    
    [self presentViewController:handleImageVC animated:YES completion:nil];
}


@end
