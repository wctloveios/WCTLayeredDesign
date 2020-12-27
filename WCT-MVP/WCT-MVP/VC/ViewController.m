//
//  ViewController.m
//  WCT-MVP
//
//  Created by wct on 2020/12/27.
//

#import "ViewController.h"
#import "WCTPresenter.h"

@interface ViewController ()

@property (nonatomic,strong) WCTPresenter *presenter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _presenter = [WCTPresenter new];
    _presenter.vc = self;
    [_presenter setUp];
}


@end
