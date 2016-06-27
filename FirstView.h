//
//  FirstView.h
//  DelegateLesson
//
//  Created by 山崎祥太郎 on 2016/06/27.
//  Copyright © 2016年 山崎祥太郎. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol firstViewDelegate <NSObject>

- (void) pressButton;

@end

@interface FirstView : UIView

@property (weak, nonatomic) id<firstViewDelegate> delegate;

@property (weak, nonatomic) IBOutlet UIButton *firstButton;

-(void)firstViewInit;

-(void)pressSecondView:(UIButton *)button;

@end
