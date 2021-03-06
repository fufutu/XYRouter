//
//  TestVC1.m
//  XYRouter
//
//  Created by heaven on 15/6/4.
//  Copyright (c) 2015年 heaven. All rights reserved.
//

#import "TestVC1.h"
#import "XYRouter.h"
#import "UIViewController+nvcItem.h"

@interface TestVC1 ()

@end

@implementation TestVC1

- (void)dealloc
{
    NSLog(@"%s", __func__);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor                               = [UIColor whiteColor];
    self.title                                              = @"TestVC1";
    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];

    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 200, 200, 50);
    label.text  = NSStringFromClass([self class]);
    [self.view addSubview:label];

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 250, 200, 50);
    [btn setTitle:@"back" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];

    [self addRightBarButtonItem];

    NSLog(@"%s, i = %@, str1 = %@, str2 = %@", __func__, @(_i), _str1, _str2);
}

+ (instancetype)viewControllerWithStr1:(NSString *)str1 str2:(NSString *)str2
{
    TestVC1 *vc = [[TestVC1 alloc] init];
    vc.str1 = str1;
    vc.str2 = str2;

    return vc;
}

- (void)didReceiveMemoryWarning
{
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

- (void)back
{
    [[XYRouter sharedInstance] openURLString:@"../"];
}

@end
