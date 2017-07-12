//
//  InputView.h
//  MervinImageHandler
//
//  Created by Mervin on 2017/7/10.
//  Copyright © 2017年 Mervin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SureInputBlock)(NSString * text);

@interface InputView : UIView

- (instancetype)initWithSubView:(UIView *)subView sureBlock:(SureInputBlock)sureInputBlock;

@end
