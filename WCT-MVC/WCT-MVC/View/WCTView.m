//
//  WCTView.m
//  WCT-MVC
//
//  Created by wct on 2020/12/23.
//

#import "WCTView.h"

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

@end
