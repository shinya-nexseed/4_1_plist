//
//  ViewController.m
//  4_1_plist
//
//  Created by Shinya Hirai on 2015/07/27.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // プロジェクト内のファイルにアクセスできるオブジェクトを宣言
    NSBundle *bundle = [NSBundle mainBundle];
    
    //読み込むプロパティリストのファイルパスを指定
    NSString *path = [bundle pathForResource:@"ios_class" ofType:@"plist"];
    
    //プロパティリストの中身データを取得
    // NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *ary = [NSArray arrayWithContentsOfFile:path]; // plistの第一層目の型に依存する
    
    // Logで確認
    // NSLog(@"aryの全件 = %@", ary);
    // NSLog(@"ary 1-1 = %@", ary[1][@"年齢"]);
    
    NSArray *keyAry = @[@"お名前",@"年齢",@"性別"];
    
    for (int i = 0; i < ary.count; i++) {
        NSLog(@"ary %i : %@",i,ary[i]);
        // NSLog(@"test : %li",(long)[ary[i] count]);
        
        for (int j = 0; j < [ary[i] count]; j++) {
            NSLog(@"ary %i : keyAry %@ => %@",i, keyAry[j],ary[i][keyAry[j]]);
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
