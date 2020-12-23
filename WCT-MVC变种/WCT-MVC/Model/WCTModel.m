//
//  WCTModel.m
//  WCT-MVC
//
//  Created by wct on 2020/12/23.
//

#import "WCTModel.h"

@implementation WCTModel

- (id)copyWithZone:(NSZone *)zone {
    WCTModel *model = [[WCTModel alloc] init];
    model.name = [_name copy];
    model.age = [_age copy];
    model.adress = [_adress copy];
    model.desc = [_desc copy];
    
    return model;
}

@end
