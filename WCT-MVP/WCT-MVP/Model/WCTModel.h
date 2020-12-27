//
//  WCTModel.h
//  WCT-MVC
//
//  Created by wct on 2020/12/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WCTModel : NSObject<NSCopying>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;
@property (nonatomic, copy) NSString *adress;
@property (nonatomic, copy) NSString *desc;


@end

NS_ASSUME_NONNULL_END
