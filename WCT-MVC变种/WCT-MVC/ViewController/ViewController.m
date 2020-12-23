//
//  ViewController.m
//  WCT-MVC
//
//  Created by wct on 2020/12/23.
//

#import "ViewController.h"
#import "WCTView.h"
#import "WCTModel.h"

@interface ViewController ()<WCTViewDelegate>

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
    wctView.backgroundColor = [UIColor redColor];
    wctView.delegate = self;
    [self.view addSubview:wctView];
    
//    wctView.nameLabel.text = model.name;
//    wctView.ageLabel.text = model.age;
//    wctView.adressLabel.text = model.adress;
//    wctView.descLabel.text = model.desc;
    
    [wctView reloadViewWithModel:model];
    
    /*
     MVC变种，其实就是将model和view建立了联系，view依据Model来展示数据，VC组装Model，组装展示是在view中实现。
     优点：对Controller进行瘦身，将View的内部细节封装起来了，外界不知道View内部的具体实现
     缺点：view依赖于Model
     */
    
    /*
     可以看到model组装到view展示内容是在view实现的，外部不知道细节，只需要将model给view即可，但是只能传输过来model或者他子类，业务更改的话，需要修改view的内部model才能将变更过的数据重新展示出来。
     想要监听view的点击事件来做一些操作，那么我们可以使用代理和block,这里id是实现了FYAppleViewProtocol协议的，weak修饰防止循环引用，使用协议实现了和VC的通信。
     */
}

- (void)wctViewDidClick:(WCTView *)view {
    NSLog(@"点击了信息View");
}


@end
