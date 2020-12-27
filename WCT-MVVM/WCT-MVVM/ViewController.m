//
//  ViewController.m
//  WCT-MVVM
//
//  Created by wct on 2020/12/27.
//

#import "ViewController.h"
#import "WCTViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) WCTViewModel *viewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     _viewModel = [[WCTViewModel alloc] initWithController:self];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    _viewModel.name = @"LJ";
}

@end
