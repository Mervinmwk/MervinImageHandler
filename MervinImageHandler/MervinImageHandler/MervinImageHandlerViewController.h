//
//  MervinImageHandlerViewController.h
//  MervinImageHandler
//
//  Created by Mervin on 2017/7/10.
//  Copyright © 2017年 Mervin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^HandleImageBlock)(UIImage * newImage);

@interface MervinImageHandlerViewController : UIViewController

- (instancetype)initWithSourceImage:(UIImage *)image handleImageBlock:(HandleImageBlock)imageBlock;

@end
