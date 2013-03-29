//
//  ViewController.m
//  UIViewSample
//
//  Created by Dolice on 2013/03/27.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  [self initLabel];
  [self debugLabelProperties];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)initLabel
{
  //ラベル初期化
  label = [[UILabel alloc] initWithFrame:CGRectZero];
  
  //サイズ定義
  label.frame = CGRectMake(0, 0, 320, 198);
  
  //中心座標定義
  label.center = CGPointMake(160, 99);

  //背景色設定
  label.backgroundColor = [[UIColor alloc]initWithRed:1.0
                                                green:0.0
                                                 blue:0.5
                                                alpha:1.0];
  //背景色を黒に設定する場合
  //label.backgroundColor = [UIColor blackColor];
  
  //ラベルにテキスト追加
  label.text = @"UILabelSample";
  //ラベルのテキストカラーを白に指定
  label.textColor = [UIColor whiteColor];
  //ラベルのテキストセンタリング設定
  //UITextAlignmentCenterは非推奨になったようです
  label.textAlignment = NSTextAlignmentCenter;

  //表示・非表示設定
  label.hidden = NO;
  
  //ステージに追加
  [self.view addSubview:label];
}

- (void)changeLabelVisiblity
{
  //表示・非表示切り替え
  label.hidden = !label.hidden;
}

- (void)debugLabelProperties
{
  //座標・サイズ参照
  NSLog(@"x: %f", label.frame.origin.x);
  NSLog(@"y:  %f", label.frame.origin.y);
  NSLog(@"width:  %f", label.frame.size.width);
  NSLog(@"height:  %f", label.frame.size.height);
  
  //中心座標参照
  NSLog(@"centerX: %f", label.center.x);
  NSLog(@"centerY: %f", label.center.y);
}

@end
