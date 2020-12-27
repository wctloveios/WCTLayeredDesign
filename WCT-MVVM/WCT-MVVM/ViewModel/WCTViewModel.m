//
//  WCTViewModel.m
//  WCT-MVVM
//
//  Created by wct on 2020/12/27.
//

#import "WCTViewModel.h"
#import "WCTView.h"
#import "WCTModel.h"

@interface WCTViewModel()

@property (nonatomic, strong) WCTView *wctView;

@end

@implementation WCTViewModel

- (instancetype)initWithController:(UIViewController *)vc{
    if (self =[super init]) {
        self.vc = vc;
        self.name = @"wct";
        
        WCTModel *model = [[WCTModel alloc] init];
        model.name = @"wct";
        model.age = @"18";
        model.adress = @"浙江.杭州";
        model.desc = @"一个努力学习进步的人";
        
        WCTView *wctView = [[WCTView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width - 20, 400)];
        wctView.backgroundColor = [UIColor redColor];
        wctView.model = model;
        wctView.viewModel = self;
        [self.vc.view addSubview:wctView];
    }
    return self;
}

@end
