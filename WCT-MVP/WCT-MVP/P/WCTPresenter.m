//
//  WCTPresenter.m
//  WCT-MVP
//
//  Created by wct on 2020/12/27.
//

#import "WCTPresenter.h"
#import "WCTView.h"
#import "WCTModel.h"

@implementation WCTPresenter

- (void)setUp {
    WCTModel *model = [[WCTModel alloc] init];
    model.name = @"wct";
    model.age = @"18";
    model.adress = @"浙江.杭州";
    model.desc = @"一个努力学习进步的人";
    
    WCTView *wctView = [[WCTView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width - 20, 400)];
    wctView.model = model;
    [self.vc.view addSubview:wctView];
}

@end
