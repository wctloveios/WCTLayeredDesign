//
//  ViewController.m
//  WCT-MVC
//
//  Created by wct on 2020/12/23.
//

#import "ViewController.h"
#import "WCTView.h"
#import "WCTModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    WCTModel *model = [[WCTModel alloc] init];
    model.name = @"wct";
    model.age = @"18";
    model.adress = @"浙江.杭州";
    model.desc = @"一个努力学习进步的人";
    
    WCTView *wctView = [[WCTView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width - 20, 400)];
    [self.view addSubview:wctView];
    
    wctView.nameLabel.text = model.name;
    wctView.ageLabel.text = model.age;
    wctView.adressLabel.text = model.adress;
    wctView.descLabel.text = model.desc;
    
    
    /*
     苹果版本的MVC是Model和VC和交互，VC和View交互
     优点：View和Model可以重复利用，可以独立使用
     缺点：Controller的代码过于臃肿(很多View和Model的时候)
     */
}


@end
