//
//  ViewController.m
//  UserDefaults01
//
//  Created by MAEDAHAJIME on 2015/06/29.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfString;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated
{
    // キーボードの表示制御
    [self hideKeyboard];
}

// キーボードのReturnボタンがタップされたらキーボードを閉じるようにする
// ※UITextFiledの以下デリゲートメソッドを実装する
// Did End On Exit
- (IBAction)doEndTextFiled:(id)sender {
    
    [self.tfString  resignFirstResponder];
    
}

// 保存ボタンアクション
- (IBAction)Save:(UIButton *)sender {
    
    // ユーザーデフォルト保存
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *string01  = self.tfString.text;
    [defaults setObject:string01 forKey:@"Key01"];

    // データの保存確認
    BOOL successful = [defaults synchronize];
    
    if (successful) {
        NSLog(@"%@", @"データの保存に成功しました。");
    }

    [self hideKeyboard];
}

// キーボードの表示制御 - resignFirstResponder
- (void)hideKeyboard
{
    // キーボードの表示制御
    [self.tfString resignFirstResponder];
    
}
@end
