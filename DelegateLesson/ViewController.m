//
//  ViewController.m
//  DelegateLesson
//
//  Created by 山崎祥太郎 on 2016/06/27.
//  Copyright © 2016年 山崎祥太郎. All rights reserved.
//

#import "ViewController.h"
#import "FirstView.h"
#import "SecondView.h"

@interface ViewController ()<firstViewDelegate>

@property (strong, nonatomic) FirstView *firstView;
@property (strong, nonatomic) SecondView *secondView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //xibファイルからfirstViewインスタンス生成
    UINib *firstNib = [UINib nibWithNibName:@"FirstView" bundle:nil];
    _firstView = [firstNib instantiateWithOwner:self options:nil][0];
    //デリゲートを自身(ViewController)に設定
    _firstView.delegate = self;
    [_firstView firstViewInit];
    [self.view addSubview:_firstView];

    // Do any additional setup after loading the view, typically from a nib.
}
//firstViewのボタンがタップされてた時の処理
-(void)pressButton{
    //secondViewをセット
    UINib *secondNib = [UINib nibWithNibName:@"SecondView" bundle:nil];
    _secondView = [secondNib instantiateWithOwner:self options:nil][0];
    [self.view addSubview:_secondView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
