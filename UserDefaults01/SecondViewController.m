//
//  SecondViewController.m
//  UserDefaults01
//
//  Created by MAEDAHAJIME on 2015/06/29.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lbString;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // データデータ読込（NSString）
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *string01 = [defaults stringForKey:@"Key01"];
    // ラベル表示
    self.lbString.text = string01;
    
    if (string01 == nil) {
        NSLog(@"%@", @"データが存在しません。");
    } else {
        NSLog(@"%@", string01);
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
