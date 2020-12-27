//
//  WCTView.m
//  WCT-MVC
//
//  Created by wct on 2020/12/23.
//

#import "WCTView.h"
#import "WCTModel.h"
#import "WCTViewModel.h"

@interface WCTView ()

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *ageLabel;
@property (nonatomic, strong) UILabel *adressLabel;
@property (nonatomic, strong) UILabel *descLabel;

@end

@implementation WCTView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 200, 30)];
        self.ageLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 200, 30)];
        self.adressLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 90, 200, 30)];
        self.descLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 130, 200, 30)];
        
        self.nameLabel.font = [UIFont systemFontOfSize:30];
        self.ageLabel.font = [UIFont systemFontOfSize:20];
        self.adressLabel.font = [UIFont systemFontOfSize:20];
        self.descLabel.font = [UIFont systemFontOfSize:16];
        
        [self addSubview:self.nameLabel];
        [self addSubview:self.ageLabel];
        [self addSubview:self.adressLabel];
        [self addSubview:self.descLabel];
    }
    
    return self;
}

- (void)setModel:(WCTModel *)model {
    _model = model;
    self.nameLabel.text = model.name;
    self.ageLabel.text = model.age;
    self.adressLabel.text = model.adress;
    self.descLabel.text = model.desc;
}

- (void)setViewModel:(WCTViewModel *)viewModel {
    _viewModel = viewModel;
    [_viewModel addObserver:self
                 forKeyPath:@"name"
                    options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld
                    context:nil];
 }

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:@"name"]) {
        self.nameLabel.text = change[NSKeyValueChangeNewKey];
    }
}

- (void)dealloc{
    [_viewModel removeObserver:self
                    forKeyPath:@"name"];
}

@end
