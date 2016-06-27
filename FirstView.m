//
//  FirstView.m
//  DelegateLesson
//
//  Created by 山崎祥太郎 on 2016/06/27.
//  Copyright © 2016年 山崎祥太郎. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView

//初期設定メソッド
-(void)firstViewInit{
    //ボタンアクションを設定
    [_firstButton addTarget:self action:@selector(pressSecondView:) forControlEvents:UIControlEventTouchDown];
}

//ボタン押下処理
-(void)pressSecondView:(UIButton *)button{
    //処理をデリゲートインスタンスに譲渡
    [self.delegate pressButton];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
